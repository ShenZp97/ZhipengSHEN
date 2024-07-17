---
title: "Sequential Convex Programming for Time-optimal Quadrotor Waypoint Flight"
authors:
- admin
- Guanzhong Zhou
- Hailong Huang
date: "2024-01-01T00:00:00Z"
doi: ""

# Schedule page publish date (NOT publication's date).
publishDate: ""

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["article"]

# Publication name and optional abbreviated publication name.
publication: "**Accepted by IROS 2024**"
publication_short: ""

abstract: Agile flight is significant for target tracking, search and rescue, and delivery applications. To achieve agile flight, we can exploit the actuator's potential by utilizing the full dynamics of the quadrotor. However, the 6-degrees-of-freedom dynamics render the optimization problem non-convex, and thus computationally intractable. To tackle this issue, we convert the original non-convex optimal control problem (OCP) into a convex subproblem and use the sequential convex programming (SCP) algorithm to iteratively solve the subproblems. Moreover, the state-triggered constraints are proposed to simultaneously optimize the time allocation of the waypoint and the trajectory itself. The numerical and physical experiment results show that the SCP algorithm can significantly reduce the computing time while ensuring a satisfactory solution.

# Summary. An optional shortened abstract.
summary: We propose a method to effeciently compute the time-optimal trajectory for waypoint flight utlizing the full dynamics of a quadrotor.

tags:
- Trajectory planning
featured: true

links:
# - name: Custom Link
#   url: http://example.org
url_pdf: ''
url_code: ''
url_dataset: ''
url_poster: ''
url_project: ''
url_slides: ''
url_source: ''
url_video: ''

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: 'Quadrotor aggressively passing waypoints'
  focal_point: ""
  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects:
# - internal-project

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: 
---

<!-- {{% callout note %}}
Create your slides in Markdown - click the *Slides* button to check out the example.
{{% /callout %}}

Add the publication's **full text** or **supplementary notes** here. You can use rich formatting such as including [code, math, and images](https://docs.hugoblox.com/content/writing-markdown-latex/). -->
