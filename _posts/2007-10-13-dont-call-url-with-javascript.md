---
layout: post
title: 速度的最终解决方案：不要用JavaScript调用任何与URL有关的对象
categories:
- Technology
tags:
- CSS
- DIV
- Firefox
- HTML
- Internet Explorer
- JavaScript
- window.onload
- 动画
---

为了MS IE能利用自身的缓存，真是让我想破了头。好在到现在终于找到了一种解决办法，其实所有的技巧都在于：**不要用JavaScript调用任何与URL有关的对象**。既然不能用JavaScript动态改变页面内元素（比如图形`<img src=... />`）的URL，那么，想要在页面内**动态**且**快速**显示图片的路基本上只剩下一条了，那就是CSS。基本原理是：利用JavaScript动态改变一个层（`<div id=...></div>`）的CSS属性，若想让它显示，则设置为`*.style.display = "block"`；否则，设置为`*.style.display = "none"`。通过对若干个层的依次显隐，一副动画就大功告成了。

当然，Firefox对这种办法也是支持的。至此，我才基本搞定了动画在网页上的显示方式——万里长征的第一步。

今天看JavaScript Reference顺便也了解到`window.onload`的作用，当一个页面在客户端加载完成之后这个函数就会被调用，因此可以事先在页面内放置一个“正在加载”的说明字样，等页面全都加载完毕了之后把这个说明隐去，并将动画的“开始”按钮设置为可用（`disabled = false`）。这样一个动画页面就完美了，吼吼。

依然参见：<http://yihui.name/r/misc/java.htm>（猛增速度，faster，直接把时间间隔减小到0秒，看看是什么效果）

## 外一篇：之前走了什么弯路

在此之前，我走的弯路太多了，现在综合起来也就一个特点：那些方法全都涉及到URL……

1. 比如设置图片的src属性（`*.src = ...`）
2. 比如设置表格的背景（`*.setAttribute("background", ...)`）
3. 比如设置对象的背景图像（`*.style.backgroundImage = "url(...)"`）
4. 比如把一个对象的HTML代码（包含图片标签）赋给另一个对象（`*.innerHTML = **.innerHTML`）
5. 等等

而对一个对象的显隐控制不会涉及到图片地址，只是单纯的显示或隐藏一个对象——实质上它一直都在这个页面里。

