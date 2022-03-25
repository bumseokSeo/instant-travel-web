
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style type="text/css">

	ul a:hover{
		text-decoration:underline; 
	}
	
	/*중반 스타일*/
	li{list-style-type:none;}
	#main{ overflow:auto;
	background-color: lightcyan;}
	
	#login{
		/*border: solid 1px gray;*/
		font-size: 2em;
	}
	#login>form>ul>li{
		float:left;
		width:30%;
		text-align:center;
	}
	#logfrm>ul>li:nth-child(2n){width:70%;}
	#loginbtn{width:835px; text-align:center; margin-left: 155px;}
	#logfrm>ul>li>input{
		width:500px;
		margin-bottom: 50px;
	}
	
	#login2>ul>li{
		float:left;
		width:33%;
		text-align:center;
		font-size: 1.5em;
	}

	
</style>
<script type="text/javascript">
	$(function() {
		
	});
	
	function logformcheck(){
		//아이디가 있는가?
		var id = document.getElementById("userid");
		if(id.value==""){
			alert("아이디를 입력하세요.");
			id.focus();//커서를 해당 객체로 이동
			return false;
		}
		var password = document.getElementById("userpwd");
		if(password.value==""){
			alert("비밀번호를 입력하세요.");
			password.focus();//커서를 해당 객체로 이동
			return false;
		}
		//아이디와 비밀번호가 모두 있는 경우
		return true;
		
		
	}
	
	
</script>
</head>
<body>

<div class="container" id="main">
	<a href="${url}/" title="홈으로"><img src="../img/mainicon4.png" class="mx-auto d-block" style="height: 400px;"/></a>
	<div id="login">
		<form method="post" action="${url}/member/loginOk" id="logfrm" onsubmit="return logformcheck()">
			<ul>
				<li>아이디</li>
				<li><input type="text" name="userid" id="userid" maxlength="40" placeholder="이메일을 입력해주세요."/></li>
				<li>비밀번호</li>
				<li><input type="password" name="userpwd" id="userpwd" maxlength="20"/></li>
				
			</ul>
			<input type="submit" value="로그인" id="loginbtn" style="font-size: 1em;" class="btn btn-secondary"/>
		</form>
	
	</div>
	<div id="login2" style="margin-top: 100px; margin-bottom: 300px;">
		<ul>
			<li><a href="#">아이디 찾기</a></li>
			<li><a href="#">비밀번호 찾기</a></li>
			<li><a href="register.html">회원가입</a></li>
		</ul>
	</div>
	
	
</div>

</body>
</html>