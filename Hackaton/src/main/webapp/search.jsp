<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
		
<link href="resources/css/common.css" type="text/css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<style>
	body{
		background-image: linear-gradient(rgba(47, 23, 15, 0.65), rgba(47, 23, 15, 0.65)), url("../resource/img/bg1.jpg");
		background-attachment: fixed;
		background-position: center;
		background-size: cover;
		display: block;
	}
	
	.container{
		width: 100%;
	}	
	.navbar-nav a{
		color: #FFFFFFB3;
		font-weight: bold;
		text-decoration: none;
		cursor: pointer;
	}
	.navbar-nav li :hover{
		color: rgba(255, 255, 255, 0.15);
		font-weight: bold;
		text-decoration: none;
	}
	
	.search-section{
		padding-top: 5rem;
  		padding-bottom: 5rem;
  		margin: 20px;
  		background-color: rgba(230, 167, 86, 0.9);
	}
	.search-section .cta-inner{
		position: relative;
  		padding: 3rem;
  		margin: 0.5rem;
  		background-color: #F6E1C5;
	}
	.search-section .cta-inner:before {
		border-radius: 0.5rem;
		content: "";
  		position: absolute;
		top: -0.5rem;
		bottom: -0.5rem;
		left: -0.5rem;
		right: -0.5rem;
		border: 0.25rem solid rgba(255, 255, 255, 0.85);
		z-index: -1;
	}
	.footer{
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
		<div class="site-heading" style="text-align: center; margin:30px;">
			<span class="site-heading-upper" style="font-size: 1.5rem; font-weight: 800; color: #E6A756;">???????????? ???????????? ????????????</span><br>
			<span class="site-heading-lower" style="font-size: 4rem; font-weight: 300; color: #F6E1C5;">?????? ???????????????</span>
		</div>
	</header>
	
	<!-- navbar -->
	<nav class="navbar" style="text-align: center; background-color: rgb(242, 150, 97);">
		<div class="container">
			<ul class="navbar-nav" style="width: 100%; text-align: center; display: inline-block;">
				<li class="nav-item" style="display: inline-block; margin: 10px 20px;"><a href="index.jsp">Home</a></li>
				<li class="nav-item" style="display: inline-block; margin: 10px 20px;"><a href="about.jsp">About</a></li>
				<li class="nav-item" style="display: inline-block; margin: 10px 20px;"><a href="user.jsp">??????</a></li>
				<li class="nav-item" style="display: inline-block; margin: 10px 20px;"><a href="store.jsp">?????????</a></li>
				<li class="nav-item" style="display: inline-block; margin: 10px 20px;"><a href="search.jsp">????????? ??????</a></li>
				<li class="nav-item" style="display: inline-block; margin: 10px 20px;"><a href="board.jsp">???????????????</a></li>
				<li class="nav-item" style="display: inline-block; margin: 10px 20px;"><a href="login.jsp">Login</a></li>
			</ul>
		</div>
	</nav>
	
	<div class="search-section">
		<div class="container">
			<div class="row">
            	<div class="col-xl-9 mx-auto">
                	<h2 class="section-heading mb-5">
                    	<span class="section-heading-lower">?????? ????????? ??????</span><br>
                    </h2>
                    <p>????????? ????????? ?????? ??????????????????.</p>
                    <div class="search_box" style="border-radius: 1px solid gray;">
                    	<form class="searchForm">
                        	<span class="city">?????????</span>
                            <select id="city" class="select" style="margin-right: 10px;">                                                
                            	<option value="????????????">????????????</option>
                                <option value="01">?????????</option>
                                <option value="02">?????????</option>
                                <option value="03">?????????</option>
                                <option value="01">?????????</option>
                                <option value="01">?????????</option>
                                <option value="01">?????????</option>
                                <option value="01">?????????</option>
                                <option value="01">?????????</option>
                                <option value="01">?????????</option>
                                <option value="01">?????????</option>
                                <option value="01">?????????</option>
                                <option value="01">?????????</option>
                                <option value="01">?????????</option>
                                <option value="01">?????????</option>
                                <option value="01">?????????</option>
                                <option value="01">?????????</option>
                                <option value="01">?????????</option>
                                <option value="01">?????????</option>
                                <option value="01">?????????</option>
                                <option value="01">?????????</option>
                                <option value="01">?????????</option>
                                <option value="01">?????????</option>
                                <option value="01">?????????</option>
                            </select>
                            <span class="gu">?????????</span>
                            <select id="gu" onchange="changeSelect();" style="margin-right: 10px;">
                                <option value="??????">??????</option>
                                <option value="??????">??????</option>
                                <option value="??????">??????</option>
                                <option value="??????">??????</option>
                                <option value="??????">??????</option>
                                <option value="??????">??????</option>
                            </select>
                            <span class="dong">?????????</span>
                            <select id="dong" style="margin-right: 10px;">
                                <option value="">??????</option>
                                <option value=""></option>
                                <option value=""></option>
                                <option value=""></option>
                                <option value=""></option>
                                <option value=""></option>
                                <option value=""></option>
                                <option value=""></option>
                                <option value=""></option>
                                <option value=""></option>
                                <option value=""></option>
                            </select>
                            <span class="title">????????????</span>
                            <select id="dong" style="margin-right: 20px;">
                                <option value="">??????</option>
                                <option value="??????">??????</option>
                                <option value="??????">??????</option>
                                <option value="??????">??????</option>
                                <option value="??????">??????</option>
                                <option value="??????">??????</option>
                                <option value="??????">??????</option>
                                <option value="??????">??????</option>
                                <option value="?????????">?????????</option>
                                <option value="???????????????">???????????????</option>
                                <option value="?????????">?????????</option>
                            </select>
                            <button class="btn btn-Warning" style="background-color: #fd7e14;">??????</button>  
                        </form>
                    </div>
                </div>
            </div>
		</div>
	</div>
	
	<footer class="footer">
		<div class="container"><p style="margin: 0px;">NongHyup | Copyright &copy; 2010 NONGH YUP CO.LTD.ALL RIGHTS RESERVEVD.</p></div>
	</footer>

</body>
</html>