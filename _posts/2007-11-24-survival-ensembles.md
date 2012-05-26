---
layout: post
title: 聚合生存模型
categories:
- Statistics
tags:
- bagging
- boosting
- Ensemble
- John Tukey
- Torsten Hothorn
- 机器学习
- 生存分析
- 随机森林
---

近年来Ensemble的方法已经不算是什么新鲜事儿了，Bootstrap aggregating（bagging）、Boosting、随机森林等等。个人感觉这些方法的理论路线比传统的统计学要次要一些，不像以往的模型、分布、渐进理论等等那样套路化，而是集中精力在提出创意和想法并实现。至于数学推导，有时候甚至都是在创意实现之后再回头来研究的（或者拼凑的）。

现在还在思考准备提交给12月8日“[临床医学研究中的统计方法学术研讨会](http://stat.ruc.edu.cn/cn/notice/52039.html)”的论文。生存分析是医学统计的一大支柱分析，经典的参数、半参数模型基本上也定型，没什么挖掘价值了。那么现在只好眼巴巴指望能从机器学习的方法中找一点出路。可惜的是，这样的想法也被人做得差不多了，比如R界的活跃分子之一Torsten Hothorn，这位德国大叔在2005年干脆写了一篇"**Survival Ensembles**"，这下好了，整个世界基本清静了，还有啥可以做的？

只好从这些狮子老虎的牙缝中拼命扒呀找呀，看有没有他们没做的或没想到的，凑一凑，凑出一篇东西来（只能算是“东西”）。

P.S. 1 今天看到Ensemble的鼻祖竟然是John Tukey，他那本"**Exploratory Data Analysis**"真是孕育了不少思想。

P.S. 2 眼看着[useR! 2008](http://www.statistik.uni-dortmund.de/useR-2008/)还有六天就可以开始提交论文摘要了，到现在还一点正式的想法都没有。晕。等我写完生存分析的论文我得马上把我的动画论文写完投出去了（试试Teaching Statistics），然后考虑useR!的论文，然后赶紧把我的animation包升级一下；如果还有空，就该考虑明年IASC的那个会了。

