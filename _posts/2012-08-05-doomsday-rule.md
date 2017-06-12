---
layout: post
title: Doomsday rule
date: '2012-08-05T21:44:37-07:00'
tags:
- tumblr
tumblr_url: http://mburns-blog.tumblr.com/post/28816823069/doomsday-rule
---
<a href="https://en.wikipedia.org/wiki/Doomsday_rule">Doomsday rule</a>

The <strong>Doomsday rule</strong> or <strong>Doomsday algorithm</strong> is a way of <a class="mw-redirect" href="https://en.wikipedia.org/wiki/Calculating_the_day_of_the_week" title="Calculating the day of the week">calculating the day of the week</a> of a given date. It provides a <a href="https://en.wikipedia.org/wiki/Perpetual_calendar" title="Perpetual calendar">perpetual calendar</a> since the <a href="https://en.wikipedia.org/wiki/Gregorian_calendar" title="Gregorian calendar">Gregorian calendar</a> moves in cycles of 400 years.



This <a href="https://en.wikipedia.org/wiki/Algorithm" title="Algorithm">algorithm</a> for <a href="https://en.wikipedia.org/wiki/Mental_calculation" title="Mental calculation">mental calculation</a> was devised by <a href="https://en.wikipedia.org/wiki/John_Horton_Conway" title="John Horton Conway">John Conway</a><sup class="reference" id="cite_ref-0"><a href="https://en.wikipedia.org/wiki/Doomsday_rule#cite_note-0"><span>[</span>1<span>]</span></a></sup><sup class="reference" id="cite_ref-1"><a href="https://en.wikipedia.org/wiki/Doomsday_rule#cite_note-1"><span>[</span>2<span>]</span></a></sup> after drawing inspiration from <a href="https://en.wikipedia.org/wiki/Lewis_Carroll" title="Lewis Carroll">Lewis Carroll&rsquo;s</a> work on a perpetual calendar algorithm.<sup class="reference" id="cite_ref-2"><a href="https://en.wikipedia.org/wiki/Doomsday_rule#cite_note-2"><span>[</span>3<span>]</span></a></sup><sup class="reference" id="cite_ref-3"><a href="https://en.wikipedia.org/wiki/Doomsday_rule#cite_note-3"><span>[</span>4<span>]</span></a></sup> It takes advantage of the fact that each year has a certain day of the week (the <em>doomsday</em>) upon which certain easy-to-remember dates fall; for example, 4/4, 6/6, 8/8, 10/10, 12/12, and the last day of February all occur on the same day of the week in any given year. Applying the Doomsday algorithm involves three steps:


<ol><li>Determine the &ldquo;anchor day&rdquo; for the century.</li>
<li>Use the anchor day for the century to calculate the doomsday for the year.</li>
<li>Choose the closest date out of the ones that always fall on the doomsday (e.g. 4/4, 6/6, 8/8), and count the number of days (<a href="https://en.wikipedia.org/wiki/Modular_arithmetic" title="Modular arithmetic">modulo 7</a>) between that date and the date in question to arrive at the day of the week.</li>
</ol>
