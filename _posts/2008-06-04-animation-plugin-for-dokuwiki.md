---
layout: post
title: Dokuwiki动画插件基本成型
categories:
- Technology
tags:
- Dokuwiki
- PHP
- 动画
- 插件
- 正则表达式
---

经过一天的努力，终于把我的动画思路转化为了[Dokuwiki](http://wiki.splitbrain.org/wiki:dokuwiki)的插件，名为"[animation](http://animation.yihui.name/_media/wiki:animation.zip)"。Wiki语法和相应的说明参见：


[http://animation.yihui.name/wiki:animation_example](http://animation.yihui.name/wiki:animation_example)



刚刚写完PHP代码，Wiki页面还比较粗糙，明天再详细写。

很久不写代码了，这个插件主要用PHP写，其中核心部分是一个正则表达式（Regular Expression），这个东西简直就是魔鬼。

P. S . Dokuwiki是一款著名的Wiki程序，基于PHP语言，不依赖数据库即可运行，比较方便。
