<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<style type="text/css">

	/*중반 스타일*/
	#main{ overflow:auto;
	background-color: papayawhip;}
	
	#registerfrm{
		margin-left:100px;
		margin-right:100px;
		
		font-size: 2em;
		overflow:auto;
		margin-bottom: 50px;
	
	}
	
	#registerfrm>form>ul>li{
		float:left;
		width:100%;
		/*text-align:center;*/
	}
	#registerfrm>form>ul>li{width:800px;}
	#registerfrm>form>ul>li>input{width:100%;}

	#submitbtn{
		margin-bottom: 80px;
		margin-top: 80px;
		
	}

</style>
<script type="text/javascript">
	$(function(){
		//아이디 중복검사
		$("#userid").keyup(function(){
			var reg = /^\w{6,12}[@]{1}[a-zA-Z]{2,8}[.]{1}[a-zA-Z]{2,4}([.][a-zA-Z]{2,4})?$/;
			var userid=$("#userid").val();
			if(userid != '' && reg.test(userid)){
				var url = "/myapp/member/memberIdCheck";
				
				$.ajax({
					url : url,
					data : "userid="+userid,
					type : "POST",
					success:function(result){
						if(result>0){//중복된 아이디임
							$("#check").html("사용불가능합니다.");
							$("#idcheck").val("N");
							$("#check").css("color","red");
						}
						else{//사용가능
							$("#check").html("사용가능합니다.");
							$("#idcheck").val("Y");
							$("#check").css("color","blue");
						}
					},
					error:function(error){
						console.log(error.responseText);
					}
				});
			}else{//id 최소 최대길이 조건으로 사용불가
				$("#check").html("사용불가능합니다.");
				$("#idcheck").val("N");
				$("#check").css("color","red");
				
			}
			
		});
	});
	
	function formcheck(){
		//이메일
		var userid = document.getElementById("userid");
		
		if(userid.value==""){
			alert("이메일을 입력해주세요.");
			userid.focus();
			return false;
			
		}
		if (document.getElementById("idcheck").value == 'N') {
			alert("이메일을 확인해주세요");
			userid.focus();
			return false;
		}
		//비밀번호
		var userpwd = document.getElementById("userpwd");
		var reg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$/;

		if(userpwd.value==""){
			alert("비밀번호를 입력해주세요");
			userpwd.focus();
			return false;
		}
		if(!reg.test(userpwd.value)){
			alert("비밀번호는 8~16자리 영문,숫자,특수문자가 각각\n1개 이상 존재해야합니다");
			userpwd.focus();
			return false;
		}
		
		//비밀번호확인
		var userpwdcheck = document.getElementById("userpwdcheck");
		
		if(userpwdcheck.value==""){
			alert("비밀번호를 확인해주세요");
			userpwdcheck.focus();
			return false;	
		}
		if(userpwdcheck.value != userpwd.value){
			alert("비밀번호가 일치하지 않습니다");
			userpwdcheck.focus();
			return false;
		}
		
		//닉네임
		reg = /^[가-힣0-9a-zA-Z]{2,8}$/;
		var name = document.getElementById("name");
		
		if(name.value==""){
			//공백인경우
			alert("닉네임을 입력하세요");
			name.focus();
			return false;
		}
		if(!reg.test(name.value)){//정규표현식에 맞으면 true
			alert("2글자 이상 입력해주세요");
			name.focus();
			return false;
		}
		return true;
	}
 	
</script>
</head>
<body>

<div class="container" id="main">
	<a href="${url}/" title="홈으로"><img src="../img/mainicon3.png" class="mx-auto d-block" style="height: 400px;"/></a>
	
	
	<div id="registerfrm">
		<form method="post" action="${url}/member/memberOk" onsubmit="return formcheck()">
			<ul>
				<li>아이디(이메일) <span id="check"></span>
					<input type="text" id="idcheck" value='N' disabled style="width:50px;"/></li>
				<li><input type="text" name="userid" id="userid" placeholder="@를 포함한 이메일을 입력해주세요" maxlength="40"/></li>
				<li>비밀번호</li>
				<li><input type="password" id="userpwd" name="userpwd" maxlength="20"/></li>
				<li>비밀번호 확인</li>
				<li><input type="password" id="userpwdcheck" name="userpwdcheck" maxlength="20"/></li>
				<li>닉네임</li>
				<li><input type="text" id="name" name="name" placeholder="2~8자리의 영문,숫자,한글조합" maxlength="8"/></li>
					<label for="sel_sex">성별을 선택하세요:</label>
						<select class="form-control" id="sex" name="sex" style="font-size: 1.2em; width:800px;">
					    	<option value="m">남성</option>
					    	<option value="f">여성</option>
					  	</select>
				<li><input type="submit" value="등록" id="submitbtn" style="font-size: 1em;" class="btn btn-secondary"/></li>
			</ul>
		</form>
	</div>
	
	
</div>

</body>
</html>