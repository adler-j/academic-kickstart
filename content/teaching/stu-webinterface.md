+++
# Date this page was created.
date = "2017-09-01"

# Project title.
title = "Smart Grids on the cloud: Web-based dynamic simulations"

# Project summary to display on homepage.
summary = "Can you help bringing Smart Grids to the cloud?"

# Optional image to display on homepage (relative to `static/img/` folder).
image_preview = ""

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["smart-grids","cloud-computing", "student-projects"]

# Optional external URL for project (replaces project detail page).
external_link = ""

# Does the project detail page use math formatting?
math = false

# Optional featured image (relative to `static/img/` folder).
[header]
image = ""
caption = ""

+++


## Background

Modern [Smart Grids](https://en.wikipedia.org/wiki/Smart_grid) rely on advanced computational tools to provide valuable information to the network operators. One of the most important tools used to ensure the security of Smart Grids are [transient stability simulations](https://en.wikipedia.org/wiki/Power_system_simulation#Transient_stability_simulation). They analyse the behaviour of Smart Grid models in time after a disturbance has occurred (loss of generation, lightning hitting a line, etc.). However, these simulations are computationally very demanding and can stall even the most powerful personal computer. Buying a dedicated computer to run these simulations can be very expensive!

The solution to this problem is [Cloud computing](https://en.wikipedia.org/wiki/Cloud_computing). The dynamic simulation software is located on a dedicated high performance computer and several users can access and run their simulations concurrently. This allows to share the cost between different users (cost of hardware, licensing, etc.) and alleviates the computational burden from personal computers.

## Objectives

In this project, you have to develop a web application for accessing the dynamic simulator RAMSES[^RAMSES] remotely, running simulations, and extracting the results. The back-end will be written in Python (RAMSES is available as a Python module). The front-end should be in html, allowing to be used by any browser. The web app should create unique user-space for each session and clear out any unused data. The final hosting platform will be on Linux (however, the development can take place on any platform).

## Deliverables

- A complete literature review including a comparison between different methods currently used for cloud computing in Smart Grids.
- A web application that interfaces to RAMSES and allows users to run simulations though a dedicated web interface. It should be mobile friendly and compatible to current web technologies.
- (Bonus) User management features. Allow to register users and maintain their data on the server.
- (Bonus) Interface to cloud storage services (such as Dropbox, Google Drive, OneDrive, etc.) to import export data.
- All the code developed should be documented and published on [GitHub](https://github.com/) under an MIT License[^GitHubLIC]. The final code (along with all other supplementary files) should be published on [Zenodo](http://www.zenodo.org/) and the DOI included in the final report[^ZenDOI].

## Student profile

- Good programming skills (Python, html -- or willingness to learn fast).
- Background in web developing will be considered a plus.

[^RAMSES]: [RAMSES: RApid Multithreaded Simulation of Electric power Systems](http://www.montefiore.ulg.ac.be/~vct/software.html)
[^GitHubLIC]: [GitHub: Licensing a repository](https://help.github.com/articles/licensing-a-repository/)
[^ZenDOI]: [Zenodo help](http://help.zenodo.org/)

Please, before asking any questions, please check the [FAQ]({{< ref "stu-faq.md" >}}).