---
layout: post
title: 我们来看看中国群众大学的网站技术有多差
categories:
- Technology
tags:
- ASP
- 中国群众大学
- 网管中心
---

中国群众大学（以下称“群大”）马上就要举办七十年校庆了，大家是不是喜气洋洋不知道，总之是忙忙碌碌，庆贺啊，庆贺啊。嗯，很好，很河蟹。

可这网络似乎一天都不曾河蟹过，大四的时候曾经不知天高地厚地在一次有校长大人参加的网站评估会议上直接骂了网管中心，当时那位sama脸色很难看，在会上不断辩护，说你是外行，不懂，小伙子年轻表乱讲话，云云。太深的技术我确实不懂，不过有些东西是个人都能懂。

群大的网管中心在这几年办了不少好事，比如买了一个看起来很有技术含量的“数字人大”系统，不过因为这个系统技术含量**太高**以至于我们这学期选课、查询成绩都得用技术含量低一些的**老系统**，新系统必须留着在咱的新闻成果中大力报道说我们有XX牛系统实现了校园信息化云云；据说学校的各种软件采购大权也在网管中心，该中心也挺会买东西的，不过因为太有眼光以至于堂堂统计学院要求买SPSS、S-Plus、SAS都买不到，所以我们只好整天从学校[官方FTP](ftp://softwareftp.ruc.edu.cn/)上下载盗版软件用；还比如当年大兴英文网站，买了一套很有技术含量的网站后台系统，不过同样因为技术含量太高以至于大部分院系都没搞清楚怎么用这个后台，该中心提供的网站模板自己号称XHTML Standard，结果用[W3C Validator](http://validator.w3.org/)一查一堆错误，真是个大Joke，至于校庆网站的不规范就不再说了……

再次发牢骚的起因是刚才Yang, Q问我上学期成绩的事情，近些天老网站也同样登不进去了，更大的Joke是我从错误页面中发现了极其低级的网站漏洞，登录研究生院的错误信息是这样的：

{% highlight text %}
Microsoft VBScript 编译器错误 错误 '800a03f6'

缺少 'End'

/iisHelp/common/500-100.asp，行242

Microsoft OLE DB Provider for ODBC Drivers 错误 '80004005'

[Microsoft][ODBC SQL Server Driver][TCP/IP Sockets]SQL Server 不存在或访问被拒绝

/xk/include/xk_util.inc，行5
{% endhighlight %}

最后一行告诉我们有`/xk/include/xk_util.inc`这样一个文件存在，好嘛，我们不妨就来瞅瞅[它究竟是什么](http://202.112.126.188//xk/include/xk_util.inc)，打开一看，乐了，连接数据库的ASP语句、判断用户是否有效的函数等等一览无遗，最可乐的是显然这个函数是很白痴的：

{% highlight text %}
<%function isvalid()
if session("usrid")<>"" and session("usrinfo")<>"" and session("usrpwd")<>"" 
then
isvalid="1"
else
isvalid="0"
end 
ifend 
function%>
{% endhighlight %}

仅仅“判断用户ID等信息**是否为空**”这样的做法让我们很容易在登录进去之后通过修改学号等参数达到查看别人信息的目的，我曾干过这种不厚道的事情……谁让程序这么白痴呢……

错误信息中说第5行处错了，那个inc文件的第5行就是连接数据库的语句，既然出了错，说明数据库DSN已经不存在了，凭我的经验，研究生院最近八成重装了服务器，而没有重新在Windows中建立那个DSN。有兴趣的黑客不妨深入研究一下，我只啰嗦到这里。

