<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberJoin Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
		
<link href="resources/css/common.css" type="text/css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

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
	
	.login-section{
		padding-top: 5rem;
  		padding-bottom: 5rem;
  		margin: 20px;
  		background-color: rgba(230, 167, 86, 0.9);
	}
	.login-section .cta-inner{
		position: relative;
  		padding: 3rem;
  		margin: 0.5rem;
  		background-color: #F6E1C5;
	}
	.login-section .cta-inner:before {
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
	<%
		String MSG = (String)request.getAttribute("MSG");
		if(MSG==null){
			MSG="";
		}
	%>
	<script>
		var msg="<%= MSG%>";
		if(msg != "")
			alert(msg);
	</script>
	<!-- header -->
	<header>
		<div class="site-heading" style="text-align: center; margin:30px;">
			<span class="site-heading-upper" style="font-size: 1.5rem; font-weight: 800; color: #E6A756;">경상북도 아동급식 전자카드</span><br>
			<span class="site-heading-lower" style="font-size: 4rem; font-weight: 300; color: #F6E1C5;">경북 참사랑카드</span>
		</div>
	</header>
	
	<!-- navbar -->
	<nav class="navbar" style="text-align: center; background-color: rgb(242, 150, 97);">
		<div class="container">
			<ul class="navbar-nav" style="width: 100%; text-align: center; display: inline-block;">
				<li class="nav-item" style="display: inline-block; margin: 10px 20px;"><a href="index.jsp">Home</a></li>
				<li class="nav-item" style="display: inline-block; margin: 10px 20px;"><a href="about.jsp">About</a></li>
				<li class="nav-item" style="display: inline-block; margin: 10px 20px;"><a href="#">회원</a></li>
				<li class="nav-item" style="display: inline-block; margin: 10px 20px;"><a href="#">가맹점</a></li>
				<li class="nav-item" style="display: inline-block; margin: 10px 20px;"><a href="search.jsp">가맹점 찾기</a></li>
				<li class="nav-item" style="display: inline-block; margin: 10px 20px;"><a href="#">고객소리함</a></li>
				<li class="nav-item" style="display: inline-block; margin: 10px 20px;"><a href="login.jsp">Login</a></li>
			</ul>
		</div>
	</nav>
	
	<div class="login-section">
		<div class="container">
			<div class="row">
            	<div class="col-xl-9 mx-auto">
                	<div class="cta-inner">
                    	<h2 style="text-align: center; margin-bottom: 40px;">
                        	<span>회원가입</span><br>
                        </h2>
                        <form class="row g-3" method="post" style="margin: 0px 150px;" action="/MemberJoin.do">
                            <div class="input-group mb-3">
                                <label class="input-group-text" for="inputGroupSelect02">선택</label>
                                <select class="form-select" id="role" aria-label="Example select with button addon">
                                  <option selected>Choose...</option>
                                  <option value="1">회원</option>
                                  <option value="2">가맹점</option>
                                  <option value="3">관리자</option>
                                </select>
                            </div>
                            <div class="mb-3 row m-2">
                                <label for="staticEmail" class="col-sm-2 col-form-label" >CODE</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" name="code" placeholder="****-****-****-****">
                                </div>
                            </div>
                            <div class="mb-3 row m-2">
                                <label for="staticEmail" class="col-sm-2 col-form-label" >이름</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" name="name">
                                </div>
                            </div>
                            <div class="mb-3 row m-2">
                                <label for="staticEmail" class="col-sm-2 col-form-label" >전화번호</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" name="phone">
                                </div>
                            </div>
                            <div class="mb-3 row m-2">
                                <label for="staticEmail" class="col-sm-2 col-form-label" >ID</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" name="id" placeholder="아이디를 입력하세요.">
                                </div>
                            </div>
                            <div class="mb-3 row m-2">
                                <label for="inputPassword" class="col-sm-2 col-form-label">PW</label>
                                <div class="col-sm-10">
                                  <input type="password" class="form-control" name="pwd" placeholder="비밀번호를 입력하세요.">
                                </div>
                            </div>
                            <div class="mb-3 row m-2">
                            	<script>
                            		function addrAPI(){
                            			var addr='';
                            			new daum.Postcode({
                            				oncomplete: function(data){
                            					if(data.userSeletedType == 'R'){
                            						addr=data.roadAddress;
                            						//alert(addr);
                            						$('#addr1').val(addr);
                            					}else{
                            						addr=data.jibunAddress;
                            						//alert(addr);
                            						$('#addr1').val(addr);
                            					}
                            				}
                            			}).open();
                            		}
                            	</script>
                                <label for="staticEmail" class="col-sm-2 col-form-label" >주소</label>
                                <div class="col-sm-10" style="display: inline;">
                                  	<input class="form-control" id="addr1" style="margin-bottom: 10px;">
                                	<input type="text" class="form-control" id="addr1" placeholder="상세주소를 입력하세요.">
                                	<a class="btn btn-Warning" onclick=addrAPI() style="float: right; margin-top: 10px; background-color: #E6A756; cursor: pointer;">주소검색</a>
                                </div>
                            </div>
                            <div class="mb-3 row m-2">
                              <button type="submit" class="btn btn-Warning w-100" style="background-color: #E6A756;">제출</button>
                            </div>
                            <div class="smb-3 row m-2">
                              <a href="login.jsp" class="btn btn-Warning w-100" style="background-color: #E6A756;">이전으로</a>
                            </div>
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