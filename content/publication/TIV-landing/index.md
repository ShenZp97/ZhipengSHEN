---
title: "Convex Optimization-Based Trajectory Planning for Quadrotors Landing on Aerial Vehicle Carriers"
authors:
- admin
- Guanzhong Zhou
- Hailong Huang
- Chao Huang
- Yutong Wang
- Fei-Yue Wang
# author_notes:
# - "Equal contribution"
# - "Equal contribution"
date: "2024-01-24"
doi: "10.1109/TIV.2023.3327263"

# Schedule page publish date (NOT publication's date).
publishDate: 2023-10-24

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["article-journal"]

# Publication name and optional abbreviated publication name.
publication: "**IEEE Transactions on Intelligent Vehicles**"
publication_short: ""

abstract: This paper presents a novel trajectory planning algorithm for quadrotors landing on aerial vehicle carriers (AVCs). The algorithm involves a quadrotor trajectory planning method based on the lossless convexification (LC) theory and a sequential convex programming (SCP) method enabling quadrotors to autonomously land on both static and moving AVCs in a three-dimensional space. By incorporating landing cone constraints, the safety of the quadrotor during landing is ensured. The LC method transforms the original nonconvex optimal control problem (OCP) into a convex optimization problem, enabling the efficient computation of a 3-degree-of-freedom (3-DoF) safe landing trajectory. The designed SCP algorithm utilizes the 3-DoF trajectory as an initial guess and iteratively solves convex subproblems to obtain a safe, agile, and accurate landing trajectory for the complete 6-DoF quadrotor dynamics. Real-world experiments validate the effectiveness and real-time performance of the proposed method.

# Summary. An optional shortened abstract.
summary: This paper presents a novel trajectory planning algorithm for quadrotors landing on aerial vehicle carriers (AVCs).

tags:
- Trajectory planning
featured: true

# links:
# - name: ""
#   url: ""
url_pdf: 'content/publication/TIV-landing/TIV-landing.pdf'
url_code: ''
url_dataset: ''
url_poster: ''
url_project: ''
url_slides: ''
url_source: ''
url_video: 'https://www.youtube.com/watch?v=yUllqTXWafs'

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: 'Quadrotor landing on AVCs'
  focal_point: ""
  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects: []

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: 
---

<!-- {{% callout note %}}
Click the *Cite* button above to demo the feature to enable visitors to import publication metadata into their reference management software.
{{% /callout %}}

{{% callout note %}}
Create your slides in Markdown - click the *Slides* button to check out the example.
{{% /callout %}}

Add the publication's **full text** or **supplementary notes** here. You can use rich formatting such as including [code, math, and images](https://docs.hugoblox.com/content/writing-markdown-latex/). -->
