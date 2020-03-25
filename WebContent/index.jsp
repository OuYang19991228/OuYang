<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=basePath%>css/style.css" type="text/css">
<meta charset="UTF-8">
<title>诗阁首页</title>
</head>
<body>
<div class="top">
			<!-- 顶部导航条 -->
			<div class="logo">
				<a href="#"><img src="<%=basePath%>img/logo.png" /></a>
			</div>
			<div class="menu">
				<ul>
					<li>
						<a href="#">首页</a>
					</li>
					<li>
						<a href="#">资源</a>
						<ul>
						<li><a>朝代</a>
							<ul>
								<li>宋朝</li>
								<li>唐朝</li>
								<li>明代</li>
								<li>元代</li>
							</ul>
						</li>
						<li><a>作者</a>
							<ul>
								<li>李白</li>
								<li>杜甫</li>
								<li>李清照</li>
								<li>白居易</li>
							</ul>
						</li>
						<li><a>主题</a>
							<ul>
								<li>边塞</li>
								<li>田园</li>
								<li>咏物</li>
								<li>送别</li>
							</ul>
						</li>
						<li><a>类型</a>
							<ul>
								<li>绝句</li>
								<li>律诗</li>
								<li>词</li>
								<li>曲</li>
							</ul>
						</li>
						</ul>
					</li>
					<li>
						<a href="#">服务</a>
					</li>
					<li>
						<a href="#">资讯</a>
					</li>
					<li>
						<a href="#">交流区</a>
					</li>
					<li>
						<a href="#">关于</a>
					</li>
				</ul>

			</div>	
			
			<div class="LoginARegister">
				<a href="<%=basePath%>index/login">登录</a>
				<a href="<%=basePath%>index/register">注册</a>
			</div>						
		</div>
		
		
		
		
		<div class="search">
			<div class="searchbox">
        		<input type="text" name="search" placeholder="请输入关键字">
      			<div id="search">搜索</div> 
   			</div>
   			
			<img src="<%=basePath%>img/bei.png" />
				
			</div>
			
			
			
		
		<div class="everyday">
			<div class="everyday-left">
				<div class="everyday-left-png"><img src="<%=basePath%>img/everyday-left.png"></div>
				每日赏析
			</div>
			<div class="everyday-right">
			</br></br></br></br></br>	严郑公宅同咏竹</br></br>
                                 唐代：杜甫</br></br>
                           绿竹半含箨，新梢才出墙。色侵书帙晚，阴过酒樽凉。</br> </br>
                           雨洗娟娟净，风吹细细香。但令无剪伐，会见拂云长。</br>
			</div>
		</div>
		<div class="hot">
			<div class="hot-left">
				<div class="hot-left-1">诗 经</div>
				<div class="hot-left-2">程 氏 墨 苑</div>
				<div class="hot-left-3">楚 辞</div>
				<div class="hot-left-4">独 乐 园 图</div>
			</div>
			<div class="hot-right">
				<div class="hot-right-png"></br></br></br></br><img src="img/hot-right.png"></div>
				热门推荐
			</div>
		</div>
		
		
		<div class="ob">
    	<div class="ob-1">
    		<img src="<%=basePath%>img/ob-1.png">
    		完全开放
    		<div class="ob-1-1">
    			</br>诗阁是一个自由开放的在线古籍图书馆。致力于开放式分享、介绍、推荐有价值的古籍善本，并鼓励将文化艺术作品数字化归档。
    		</div>
    	</div>
    	<div class="ob-2">
    		<img src="<%=basePath%>img/ob-2.png">
    		精心挑选
    		<div class="ob-2-1">
    			</br>我们尽量挑选欣赏和在阅读价值较高的善本，所以我们更倾向于：艺术类、影像类、珍稀类以及部分刊印水平较高的书籍。
    		</div>
    	</div>
    	<div class="ob-3">
    		<img src="<%=basePath%>img/ob-3.png">
    		全力呈现
    		<div class="ob-3-1">
    			</br>我们最大限度地还原书籍品貌、内容；借此计划让大家自由、免费地欣赏到那些难以现世的书籍。让大家能从中感受到人类文明进程。
    		</div>
    	</div>
	</div>

	<div class="indexbottom">
	<div class="last">
		<div class="last-1">
			</br>更多热门资源
			<li><a href="#">水浒全图</a></闪电>
			<li><a href="#">温疫论</a></闪电>
			<li><a href="#">文美斋诗笺谱</a></闪电>
			<li><a href="#">皇朝礼器图式</a></闪电>
			<li><a href="#">周培春民俗画系列</a></闪电>
			<li><a href="#">家具陈设画册</a></闪电>
		</div>
		<div class="last-2">
			</br>图书馆推荐
			<li><a href="#">世界数学图书馆</a></闪电>
			<li><a href="#">互联网档案馆</a></闪电>
			<li><a href="#">哈佛大学图书馆</a></闪电>
			<li><a href="#">台北国家图书馆</a></闪电>
			<li><a href="#">美国国会图书馆</a></闪电>
			<li><a href="#">法国国家图书馆</a></闪电>
		</div>
		<div class="last-3">
			</br>博物馆推荐
			<li><a href="#">北京故宫博物院</a></闪电>
			<li><a href="#">台北故宫博物院</a></闪电>
			<li><a href="#">大都会博物馆</a></闪电>
			<li><a href="#">克立夫兰艺术博物馆</a></闪电>
			<li><a href="#">弗瑞尔赛克勒博物馆</a></闪电>
			<li><a href="#">e 国宝</a></闪电>
		</div>
		<div class="last-4">
			</br></br></br></br>
			每个人都能自由地看到我们的文明</br>
			诗阁致力于开放式分享、介绍公共版权领域的古籍善本数字资源
		</div>
	</div>
	</div>
		
</body>
</html>