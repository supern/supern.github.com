---
layout: post
title: 这个年代该怎样教统计（或不该怎样教）
categories:
- Featured
- Statistics
tags:
- Douglas Bates
- P值
- 回归
- 密度估计
- 直方图
- 统计教育
- 计算机
---

今天在R-sig-teaching列表中读到一组讨论，让我连连拍大腿！楼主的帖子在[这里](https://stat.ethz.ch/pipermail/r-sig-teaching/2009q1/000107.html)，当我看到4楼[Douglas Bates的回帖](https://stat.ethz.ch/pipermail/r-sig-teaching/2009q1/000123.html)之后，大为激动。举几个例子：



	
  * 能做密度估计了还要啥直方图呀，扔进垃圾堆吧

	
  * 能做关于分布概率的精确计算了还讲啥近似啊（如用泊松去逼近二项）

	
  * 有了P值还讲个鬼alpha啊（以及临界值、拒绝域）

	
  * 回归系数在计算机中不是直接用X'X求逆计算的（如R语言），还讲个鬼的简化公式$latex (X'X)^{-1}X'Y$啊，直接交待一下目标是最小化残差平方和，剩下的工作要么讲真正的计算，要么讲如何建模、如何检验残差等


很解恨，很过瘾。最近看那些考研题，要是按照这些标准，简直要杀掉80%的题。然后看看统计的专业课，我想杀掉20%的内容应该是没问题的。

Hadley的跟帖：

	
  * 查表的内容也该扔掉（如查正态分布函数值）


早就该扔了。
