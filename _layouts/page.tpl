<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8" />
<meta name="author" content="mytharcher" />
<meta name="keywords" content="{{ page.tags | join: ',' }}" />
<title>Votbar{% if page.title %} / {{ page.title }}{% endif %}</title>
<link href="http://supern.github.com/feed.xml" rel="alternate" title="Votbar" type="application/atom+xml" />
<link rel="stylesheet" type="text/css" href="/assets/css/site.css" />
<link rel="stylesheet" type="text/css" href="/assets/css/code/github.css" />
{% for style in page.styles %}<link rel="stylesheet" type="text/css" href="{{ style }}" />
{% endfor %}
</head>

<body class="{{ page.pageClass }}">

<div class="main">
	{{ content }}

	<footer>
		<p>&copy; Since 2012 <a href="#">votbar.com</a></p>
	</footer>
</div>

<side>
	<h2><a href="/">Votbar</a><a href="/feed.xml" class="feed-link" title="RSS订阅"><img src="http://blog.rexsong.com/wp-content/themes/rexsong/icon_feed.gif" alt="RSS feed" /></a></h2>
	
	<nav class="block">
		<ul>
		{% for category in site.custom.categories %}<li class="{{ category.name }}"><a href="/category/{{ category.name }}/">{{ category.title }}</a></li>
		{% endfor %}
		</ul>
	</nav>
	
	<form action="/search/" class="block block-search">
		<h3>搜索</h3>
		<p><input type="search" name="q" placeholder="输入关键词按回车搜索" /></p>
	</form>
	
	<div class="block block-about">
		<h3>关于</h3>
		<figure>
			<img
		src="https://lh5.googleusercontent.com/-DWcvRXhsk1E/AAAAAAAAAAI/AAAAAAAAAJ0/p47frDkXr4I/s250-c-k/photo.jpg"
		width="100px" height="100px"/>
			<figcaption><strong>supern lee</strong></figcaption>
		</figure>
		<p>码农。在移动互联网里面浪迹，爱好计算机相关的东
		西......有口吃。</p>
	</div>
	
	<div class="block block-license">
		<h3>版权申明</h3>
		<p><a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/2.5/cn/" target="_blank" class="hide-target-icon" title="本站(博客)作品全部采用知识共享署名-非商业性使用-禁止演绎 2.5 中国大陆许可协议进行许可。转载请通知作者并注明出处。"><img alt="知识共享许可协议" src="http://i.creativecommons.org/l/by-nc-nd/2.5/cn/88x31.png" /></a></p>
	</div>
	
	<div class="block block-thank">
		<h3>Power by</h3>
		<p>
			<a href="http://disqus.com/" target="_blank" title="云评论服务">Disqus</a>,
			<a href="http://github.com/" target="_blank">GitHub</a>,
			<a href="http://www.google.com/cse/" target="_blank" title="自定义站内搜索">Google Custom Search</a>,
			<a href="http://github.com/mytharcher"target="_blank" title="jekyll theme">mytharcher</a>,
			<a href="http://softwaremaniacs.org/soft/highlight/en/">HighlightJS</a>,
			<a href="http://github.com/mojombo/jekyll" target="_blank">jekyll</a>
		</p>
	</div>
</side>

<script src="http://elfjs.googlecode.com/files/elf-0.3.3-min.js"></script>
<script src="/assets/js/site.js"></script>
<script src="/assets/js/highlight.js"></script>
<script src="/assets/js/hljs/languages/css.js"></script>
<script src="/assets/js/hljs/languages/xml.js"></script>
<script src="/assets/js/hljs/languages/javascript.js"></script>
<script src="/assets/js/hljs/languages/php.js"></script>
<script src="/assets/js/hljs/languages/ruby.js"></script>
{% for script in page.scripts %}<script src="{{ script }}"></script>
{% endfor %}

</body>
</html>