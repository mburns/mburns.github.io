---
layout: post
title: xargs - Wikipedia, the free encyclopedia
date: '2012-05-14T02:00:07-07:00'
tags:
- tumblr
tumblr_url: http://mburns-blog.tumblr.com/post/23030641376/xargs-wikipedia-the-free-encyclopedia
---
<a href="https://en.wikipedia.org/wiki/Xargs#The_separator_problem">xargs - Wikipedia, the free encyclopedia</a>

Many UNIX utilities are line oriented. These may work with xargs as long as the lines do not contain &rsquo;, &ldquo;or space. Some of the UNIX utilities can use <a href="https://en.wikipedia.org/wiki/Null_character" title="Null character">NUL</a> as record separator (e.g. <a href="https://en.wikipedia.org/wiki/Perl" title="Perl">Perl</a> (requires -0 and \0 instead of \n), <a href="https://en.wikipedia.org/wiki/Locate_%28Unix%29" title="Locate (Unix)">locate</a> (requires using -0), <a href="https://en.wikipedia.org/wiki/Find" title="Find">find</a> (requires using -print0), <a href="https://en.wikipedia.org/wiki/Grep" title="Grep">grep</a> (requires -z or -Z), <a href="https://en.wikipedia.org/wiki/Sort_%28Unix%29" title="Sort (Unix)">sort</a> (requires using -z)). Using -0 for xargs deals with the problem, but many UNIX utilities cannot use NUL as separator (e.g. <a href="https://en.wikipedia.org/wiki/Head_%28Unix%29" title="Head (Unix)">head</a>, <a href="https://en.wikipedia.org/wiki/Tail_%28Unix%29" title="Tail (Unix)">tail</a>, <a href="https://en.wikipedia.org/wiki/Ls" title="Ls">ls</a>, <a href="https://en.wikipedia.org/wiki/Echo_%28command%29" title="Echo (command)">echo</a>, <a href="https://en.wikipedia.org/wiki/Sed" title="Sed">sed</a>, <a href="https://en.wikipedia.org/wiki/Tar_%28file_format%29" title="Tar (file format)">tar</a> -v, <a href="https://en.wikipedia.org/wiki/Wc_%28Unix%29" title="Wc (Unix)">wc</a>, <a href="https://en.wikipedia.org/wiki/Which_%28Unix%29" title="Which (Unix)">which</a>).



But often people forget this and assume xargs is also line oriented, which is <strong>not</strong> the case (per default xargs separates on newlines <strong>and</strong> blanks within lines, substrings with blanks must be single or double-quoted).

