[CmdletBinding()]
param(
  [ValidateRange(1, 65535)]
  [int]$Port = 1313,
  [switch]$NoOpen,
  [switch]$BuildOnly
)

$ErrorActionPreference = 'Stop'

$repoRoot = Split-Path -Parent $PSScriptRoot
$toolsRoot = Join-Path $repoRoot '.tools'
$hugoVersion = '0.124.1'
$goVersion = '1.22.1'
$hugoDir = Join-Path $toolsRoot 'hugo'
$hugoExe = Join-Path $hugoDir 'hugo.exe'
$goRoot = Join-Path $toolsRoot 'go'
$goExe = Join-Path $goRoot 'bin\go.exe'

function Download-And-ExpandZip {
  param(
    [Parameter(Mandatory = $true)][string]$Uri,
    [Parameter(Mandatory = $true)][string]$Destination,
    [Parameter(Mandatory = $true)][string]$ArchiveName
  )

  $downloadsDir = Join-Path $toolsRoot 'downloads'
  New-Item -ItemType Directory -Path $downloadsDir -Force | Out-Null
  $archivePath = Join-Path $downloadsDir $ArchiveName

  Write-Host "Downloading $Uri"
  Invoke-WebRequest -Uri $Uri -OutFile $archivePath
  New-Item -ItemType Directory -Path $Destination -Force | Out-Null
  Expand-Archive -LiteralPath $archivePath -DestinationPath $Destination -Force
  Remove-Item -LiteralPath $archivePath -Force
}

if (-not (Test-Path -LiteralPath $hugoExe)) {
  Download-And-ExpandZip `
    -Uri "https://github.com/gohugoio/hugo/releases/download/v$hugoVersion/hugo_extended_${hugoVersion}_windows-amd64.zip" `
    -Destination $hugoDir `
    -ArchiveName "hugo_extended_${hugoVersion}_windows-amd64.zip"
}

if (-not (Test-Path -LiteralPath $goExe)) {
  Download-And-ExpandZip `
    -Uri "https://go.dev/dl/go${goVersion}.windows-amd64.zip" `
    -Destination $toolsRoot `
    -ArchiveName "go${goVersion}.windows-amd64.zip"
}

$env:PATH = "$(Split-Path -Parent $goExe);$hugoDir;$env:PATH"
$env:GOPATH = Join-Path $repoRoot '.cache\go'
$env:GOMODCACHE = Join-Path $env:GOPATH 'pkg\mod'
New-Item -ItemType Directory -Path $env:GOPATH -Force | Out-Null

if ($BuildOnly) {
  $arguments = @('--gc', '--minify', '--cleanDestinationDir')
  Write-Host 'Building the production site into public/'
}
else {
  $previewUrl = "http://localhost:$Port/"
  $arguments = @(
    'server',
    '--buildDrafts',
    '--buildFuture',
    '--disableFastRender',
    '--navigateToChanged',
    '--port', $Port
  )

  if (-not $NoOpen) {
    Start-Process $previewUrl
  }

  Write-Host "Starting local preview at $previewUrl"
  Write-Host 'Press Ctrl+C to stop the server.'
}

Push-Location $repoRoot
try {
  & $hugoExe @arguments
  exit $LASTEXITCODE
}
finally {
  Pop-Location
}
