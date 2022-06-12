<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>For Child Card</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="resources/css/common.css" type="text/css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<style>
body {
	background-image: linear-gradient(rgba(47, 23, 15, 0.65),
		rgba(47, 23, 15, 0.65)), url("../resource/img/bg1.jpg");
	background-attachment: fixed;
	background-position: center;
	background-size: cover;
	display: block;
}

.container {
	width: 100%;
}

.navbar-nav a {
	color: #FFFFFFB3;
	font-weight: bold;
	text-decoration: none;
	cursor: pointer;
}

.navbar-nav li :hover {
	color: rgba(255, 255, 255, 0.15);
	font-weight: bold;
	text-decoration: none;
}

.footer {
	background-color: rgba(47, 23, 15, 0.9);
	text-align: center;
	color: #FFFFFFB3;
	padding: 2rem;
}
</style>
</head>
<body>
	<!-- header -->
	<header>
		<div class="site-heading" style="text-align: center; margin: 30px;">
			<span class="site-heading-upper"
				style="font-size: 1.5rem; font-weight: 800; color: #E6A756;">경상북도
				아동급식 전자카드</span><br> <span class="site-heading-lower"
				style="font-size: 4rem; font-weight: 300; color: #F6E1C5;">경북
				참사랑카드</span>
		</div>
	</header>

	<!-- navbar -->
	<nav class="navbar"
		style="text-align: center; background-color: rgb(242, 150, 97);">
		<div class="container">
			<ul class="navbar-nav"
				style="width: 100%; text-align: center; display: inline-block;">
				<li class="nav-item"
					style="display: inline-block; margin: 10px 20px;"><a
					href="index.jsp">Home</a></li>
				<li class="nav-item"
					style="display: inline-block; margin: 10px 20px;"><a
					href="about.jsp">About</a></li>
				<li class="nav-item"
					style="display: inline-block; margin: 10px 20px;"><a
					href="user.jsp">회원</a></li>
				<li class="nav-item"
					style="display: inline-block; margin: 10px 20px;"><a
					href="store.jsp">가맹점</a></li>
				<li class="nav-item"
					style="display: inline-block; margin: 10px 20px;"><a
					href="search.jsp">가맹점 찾기</a></li>
				<li class="nav-item"
					style="display: inline-block; margin: 10px 20px;"><a
					href="board.jsp">고객소리함</a></li>
				<li class="nav-item"
					style="display: inline-block; margin: 10px 20px;"><a
					href="login.jsp">내 정보</a></li>
			</ul>
		</div>
	</nav>

	<!-- section -->
	<style>
.section {
	display: block;
	margin-top: 100px;
	margin-bottom: 100px;
}
</style>
	<div class="section">
		<div class="container">
			<div class="row">
				<div class="main" style="text-align: center;">
					<div class="intro">
						<img class="intro-img"
							style="border-radius: 0.25rem; width: 70%; float: right; margin-right: 150px;"
							src="../resource/img/intro_c.jpg">
						<div class="intro-text"
							style="border-radius: 0.25rem; width: 30%; margin-top: 70px; position: absolute; background-color: #F6E1C5;">
							<h3 style="margin: 30px;">
								<span>온라인으로 빠르고 간편하게~</span>
							</h3>
							<p style="font-size: 15px;">경북 참사랑 카드는 경상북도 급식아동들의 꿈을</p>
							<p style="font-size: 15px;">실현하기 위해 드리는 카드입니다.</p>
							<div class="account-btn">
								<a href="#" class="btn btn-Warning"
									style="background-color: #E6A756; position: relative; margin-bottom: -17px;">잔액조회</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer class="footer">
		<div class="container">
			<p style="margin: 0px;">NongHyup | Copyright &copy; 2010 NONGH
				YUP CO.LTD.ALL RIGHTS RESERVEVD.</p>
		</div>
	</footer>

</body>
</html>