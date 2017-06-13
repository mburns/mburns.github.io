---
layout: post
title: What every programmer should know about memory, Part 1
date: '2012-07-12T20:15:09-07:00'
tags:
- tumblr
tumblr_url: http://mburns-blog.tumblr.com/post/27098383455/what-every-programmer-should-know-about-memory
---
<a href="https://lwn.net/Articles/250967/">What every programmer should know about memory, Part 1</a>

For the most part, this document will deal with CPU caches and some effects of memory controller design. In the process of exploring these topics, we will explore DMA and bring it into the larger picture. However, we will start with an overview of the design for today&rsquo;s commodity hardware. This is a prerequisite to understanding the problems and the limitations of efficiently using memory subsystems. We will also learn about, in some detail, the different types of RAM and illustrate why these differences still exist.

This document is in no way all inclusive and final. It is limited to commodity hardware and further limited to a subset of that hardware. Also, many topics will be discussed in just enough detail for the goals of this paper. For such topics, readers are recommended to find more detailed documentation.

When it comes to operating-system-specific details and solutions, the text exclusively describes Linux. At no time will it contain any information about other OSes. The author has no interest in discussing the implications for other OSes. If the reader thinks s/he has to use a different OS they have to go to their vendors and demand they write documents similar to this one.

