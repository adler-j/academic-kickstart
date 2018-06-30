+++
date = 2018-03-04
lastmod = 2018-03-04
draft = false
tags = ["open-source", "test-systems", "reproducible", "smart-grids"]
title = "How important are open-access models in Smart Grids?"
math = true
summary = """
Imagine having open-source models that you can test your research ideas, a new product, or computational tool, in a reproducible and transparent manner. Yes, it's possible!
"""

[header]
image = ""
caption = ""

+++

A couple of years ago, I published some work on dynamic simulations of combined transmission and distribution systems. I presented part of the work at a [conference]({{< ref "AVC2014cb.md" >}}) followed by an extended [journal]({{< ref "ALC2016ja.md" >}}) version. While the work was very interesting (:smirk:), I was really surprised by how many people contacted me to get access to the test-system model that we used in the results section. It was a simple synthetic system carefully put together to test the simulation algorithm, but apparently, it was a hot commodity in our research community. This inspired me to write this blog post.

## Why test-system models?

Researchers working in electric power systems (or, Smart Grids -- a discussion for another time) know very well that to publish your work, you need good test-system models for validation and testing. Simply put, you cannot publish anything without having a _Results_ section showing that your method works on some real/realistic/well-known test model. We belong to those disciplines that find it difficult to test or validate our work with real-world experiments. That's because very few of us can go up to a system operator or generator/wind farm owner and say "_Hey, let's try this idea on your system. I'm 99% sure nothing will explode!_". You first need to have a solid theoretical background, supported by an abundance of simulation results _and_ probably some small-scale experimental results. Then, you might have a chance of convincing the _Industry_ to take a look. To make things worst, real test-system models are hard to come by. Very few people can have access to the _real_ data of system operators for obvious security reasons (they are basically the blueprints of one of the most important national infrastructures).

## Which test-system model?

So, how do "normal" researchers get to publish their work? For decades now, the IEEE test-system models have been the usual go-to for most of us. These models were set up a long time ago by IEEE committees and work groups -- usually accompanied by detailed reports providing the data as well as some initial analysis. These systems have had a lot of toothing problems over the years (bugs, missing data, abnormalities, etc.). However, the _IEEE_ brand adds to their authority and makes them the standard for validating and comparing research results. Of course, other models were proposed over the years by academic groups or individuals and due to their widespread use found their way into this reference group.

Most of these reference models are synthetic, loosely based on some existing systems. Some designed only for static problems (power-flow), fewer for reliability, some for voltage stability, others for transients (a small review is available [here]({{< ref "PAH2017ja.md" >}})), and lately for [optimization](https://github.com/power-grid-lib/pglib-opf). Over the decades, researchers have "tortured" these models, tweaking and spinning to fit their research, translating from one format to the other -- since we cannot decide and stick to a common modelling framework (yet another discussion for a later time), etc. 

{{< figure src="/img/blog/IEEE118.png" title="IEEE 118-bus system (Source: http://icseg.iti.illinois.edu)" >}}

One can argue that there is no problem with modifying these systems if you can justify the modifications. Well, the problem can be summarized in one word: **Reproducibility**. In power systems, researchers are not required to publish their test systems along with the paper. So, when a paper states "_We used the IEEE test-system XYZ but modified all the generator to use the AVR from paper [1], all the models to have a mix of loads from [2-5], and simulated with a our software SuperSim_", good luck trying to reproduce the results and comparing against yours!

## The future of test-system models

So, how can we make things better? How can we make research more **transparent** and **reproducible**? 

The solution sounds simple: we need to publish the test-models and data used for the acquiring results in open-access along with the code to reproduce the results. This way, anyone can reproduce our results and test their own techniques against ours. Several platforms make sharing data, code, or both, easy anymore. Anyone can publish their code on [Github](http://github.com) or [Bitbucket](http://bitbucket.org) and their datasets on platforms like [Figshare](http://figshare.com) and [Zenodo](http://zenodo.org). Other platforms even allow posting both the data and the source code in a single place, like [Code Ocean](http://codeocean.com).

The technological tools to make research in power systems reproducible and transparent are available. Yet, the most challenging task is changing the mentality of people. Starting from the journal editors to demand this transparency in their work, to the grant funders and down to the PhD students. It will take a lot of work, but I believe it's a worthy cause for advancing science and achieving a truly Smart Grid.

Closing, the test-system model that I mentioned in the beginning of this blog post has been transformed into an open-source system and is free for everyone to use, share and compare. We hope it will provide a small push to the right direction. The write-up can be found in this [paper]({{< ref "PAH2017ja.md" >}}).