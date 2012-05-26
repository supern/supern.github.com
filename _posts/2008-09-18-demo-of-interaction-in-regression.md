---
layout: post
title: 回归分析中的交互作用展示
categories:
- Featured
- Statistics
- R language
tags:
- 交互作用
- 回归
- 气泡图
---

我们常见到的教科书上对交互作用的展示一般都是分别给定第二个自变量，然后看第一个自变量对因变量的影响随着第二个自变量取值变化会有何变化。总之，用到的图形都是二维图形，这里我以三维图形来展示交互效应的效果。首先看变量之间没有交互的时候是什么效果：

[caption id="" align="aligncenter" width="400" caption="无交互作用"][![](http://yihui.name/en/wp-content/uploads/1221718981_0.png)](http://yihui.name/en/wp-content/uploads/1221718981_1.png)[/caption]

无论是从x方向还是z方向来看，y（气泡大小）增大的速度都是一样的，例如x=0与x=10的时候，随着z的增加，y增加的速度一样（因为y与z是线性关系，这种关系不受x影响）。

[caption id="" align="aligncenter" width="400" caption="有交互作用"][![](http://yihui.name/en/wp-content/uploads/1221719196_0.png)](http://yihui.name/en/wp-content/uploads/1221719196_1.png)[/caption]

而有交互效应的时候情况就不一样了，y在x或z方向上增大的速度会与x或z本身的取值有关。例如图中x越大，则y沿着z增大越快（因为斜率里面包含了x）。

不知这种形式是否比教科书上几道折线更清楚一些。这个问题灵感来自于R-help的邮件列表。R代码参考[英文Blog](http://yihui.name/en/2008/09/to-observe-interactions-in-bubble-plots/)。
