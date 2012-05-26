---
layout: post
title: Rweb：交互式计算和作图
categories:
- Featured
- R language
tags:
- Juergen Symanzik
- R
- Rweb
- 交互
- 动画
- 网页
---

昨天收到犹他州立[Juergen](http://www.math.usu.edu/~symanzik/)的回信，倒是提醒了我关于网页中的动画的一件重要事情，就是交互。以前接触过Rweb，不过没有想起来怎样把它用在网页开发中，这回想起来才意识到，其实把动画的计算和作图交给别人的服务器去做就可以了，例如明尼苏达的服务器（[http://rweb.stat.umn.edu/Rweb/](http://rweb.stat.umn.edu/Rweb/)）。我要写的一点代码就是用JavaScript在背后偷偷把R代码提交到Rweb，然后再偷偷从服务器上返回的结果中取出图片地址，放在我的网页中就可以了。这一点我想应该是容易实现的。不过就怕别人觉得这太耗服务器资源，把寡人给封掉了。

这样一来，动画网页有望进一步扩展，而不必事先把图形都做好了放在某个位置。善哉善哉。（以前[lixiaoxu](http://lixiaoxu.lxxm.com/)老师的建议可以通过“曲线救国”的方式实现了）
