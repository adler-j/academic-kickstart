+++
# Date this page was created.
date = "2017-09-01"

# Project title.
title = "Security assessment of Smart Grids using High-Performance Computing"

# Project summary to display on homepage.
summary = "Can you help bringing Smart Grids to the cloud?"

# Optional image to display on homepage (relative to `static/img/` folder).
image_preview = ""

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["smart-grids","cloud-computing","HPC", "student-projects"]

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

Modern [Smart Grids](https://en.wikipedia.org/wiki/Smart_grid) rely on advanced computational tools to provide valuable information to the network operators. One of the most important tools used to ensure the security of Smart Grids are [transient stability simulations](https://en.wikipedia.org/wiki/Power_system_simulation#Transient_stability_simulation). They analyse the behaviour of Smart Grid models in time after a disturbance has occurred (loss of generation, lightning hitting a line, etc.). 

To ensure the reliability of electricity grids, these are designed with [N+1 redundancy](https://en.wikipedia.org/wiki/N%2B1_redundancy), meaning that they can lose any one component and the system should survive and remain within acceptable operating limits. To ensure this feature, system operators routinely perform a so-called N-1 security assessment: they simulate the loss of any one single component in the Smart Grid and check that all of them lead to a secure operation.

As this procedure is extremely time consuming, cluster computing is frequently used by executing the different simulations in parallel and aggregating their results.

## Objectives

In this project, you have to develop a security assessment platform that exploits parallel computing on the university cluster computer [ARC](http://arc.leeds.ac.uk/) to check N-1 conditions in a realistic Smart Grid. You will use the dynamic simulator RAMSES[^RAMSES] to perform the actual simulations and get the results through a Python-based interface. The platform should be implemented in Python or another Linux-based scripting language supported by [ARC](http://arc.leeds.ac.uk/).

{{< figure src="/img/projects/HPC_decorative_photos.png" title="The ARC HPC systems [Source: ARC]" >}}

## Deliverables

- A complete literature review including a comparison between different methods currently used for N-1 security assessment in Smart Grids.
- An N-1 security platform implemented on [ARC](http://arc.leeds.ac.uk/). It should receive a list of contingencies to be analysed and the security constraints to be satisfied and provide a detailed result.
- (Bonus) Interface to cloud services to submit and analyse the tasks (exporting to Dropbox, mobile notifications, etc.).
- All the code developed should be documented and published on [GitHub](https://github.com/) under an MIT License[^GitHubLIC]. The final code (along with all other supplementary files) should be published on [Zenodo](http://www.zenodo.org/) and the DOI included in the final report[^ZenDOI].

## Student profile

- Good programming skills (Python, Linux).

[^RAMSES]: [RAMSES: RApid Multithreaded Simulation of Electric power Systems](http://www.montefiore.ulg.ac.be/~vct/software.html)
[^GitHubLIC]: [GitHub: Licensing a repository](https://help.github.com/articles/licensing-a-repository/)
[^ZenDOI]: [Zenodo help](http://help.zenodo.org/)

Please, before asking any questions, please check the [FAQ]({{< ref "stu-faq.md" >}}).