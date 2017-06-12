---
layout: post
title: 'eems to be an exception to this general security consciousness. This is because
  pacman uses neither a signed package list nor signed packages when upgrading or
  installing new software. The only check pacman makes on the integrity of a software
  package is that the package’s md5 checksum matches the checksum listed for that
  package in the package list. This makes exploiting an Arch system almost trivial
  provided an attacker is able to place themselves between the Arch system and the
  Arch package repository. For those unfamiliar with why package signing is so important
  to the security of a Linux system, I will outline the simple steps an attacker would
  have to take to gain root privileges on an Arch system using only this flaw in pacman.
  To be clear, unless you completely trust every network you’ve ever updated your
  Arch system on, you’ve potentially been 0wned. Subverting an Arch Package: Making
  alterations to an Arch package (at least well enough for pacman not to throw up
  errors) is EXTREMELY simple. I was lazy and simply opened my chosen package (gzip)
  up in file-roller and editted the “.INSTALL” file. I chose to alter the gzip package
  because it’s in the core repository which virtually everyone will be using, it’s
  a very small package, its functionality almost never changes (it’s nearly 20 years
  old), and it already contains a “.INSTALL” file to alter.'
date: '2011-03-18T02:06:19-07:00'
tags:
- tumblr
tumblr_url: http://mburns-blog.tumblr.com/post/3937339128/eems-to-be-an-exception-to-this-general-security
---
<blockquote>eems to be an exception to this general security consciousness. This is because pacman uses neither a signed package list nor signed packages when upgrading or installing new software. The only check pacman makes on the integrity of a software package is that the package’s md5 checksum matches the checksum listed for that package in the package list. This makes exploiting an Arch system almost trivial provided an attacker is able to place themselves between the Arch system and the Arch package repository. For those unfamiliar with why package signing is so important to the security of a Linux system, I will outline the simple steps an attacker would have to take to gain root privileges on an Arch system using only this flaw in pacman. To be clear, unless you completely trust every network you’ve ever updated your Arch system on, you’ve potentially been 0wned. Subverting an Arch Package: Making alterations to an Arch package (at least well enough for pacman not to throw up errors) is EXTREMELY simple. I was lazy and simply opened my chosen package (gzip) up in file-roller and editted the “.INSTALL” file. I chose to alter the gzip package because it’s in the core repository which virtually everyone will be using, it’s a very small package, its functionality almost never changes (it’s nearly 20 years old), and it already contains a “.INSTALL” file to alter.</blockquote>&#8212;<a href="https://f1ngerscr0ssed.wordpress.com/2011/03/17/0wning-arch/">0wning Arch: Why Package Signing Is Important « F1ngersCr0ssed</a>
