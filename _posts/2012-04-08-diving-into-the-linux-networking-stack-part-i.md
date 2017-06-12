---
layout: post
title: Diving into the Linux Networking Stack, Part I
date: '2012-04-08T02:46:27-07:00'
tags:
- tumblr
tumblr_url: http://mburns-blog.tumblr.com/post/20706461458/diving-into-the-linux-networking-stack-part-i
---
<a href="http://beyond-syntax.com/blog/2011/03/diving-into-linux-networking-i/">Diving into the Linux Networking Stack, Part I</a>

Have you ever wondered what happens when your Linux machine gets a packet from the network? I have, but most of the information I&rsquo;ve seen is concerned with the <a href="http://gicl.cs.drexel.edu/people/sevy/network/Linux_network_stack_walkthrough.html">2.4.x kernel</a>. For my own sake, I decided to take a walk through the Linux networking stack (using Linux kernel 2.6.37) and thought someone else might be interested in a little breakdown as well.

