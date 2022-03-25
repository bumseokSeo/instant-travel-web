<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<style type="text/css">
body {
	margin: 0;
	padding: 0;
	font-family: KOTRAHOPE;
}

/*중반 스타일*/
#main {
	overflow: auto;
	background-color: honeydew;
}

#profilefrm {
	margin-left: 100px;
	margin-right: 100px;
	font-size: 2em;
	overflow: auto;
	margin-bottom: 50px;
}

#profilefrm>form>ul>li {
	float: left;
	width: 100%;
	/*text-align:center;*/
}

#profilefrm>form>ul>li {
	width: 800px;
}

#profilefrm>form>ul>li>input {
	width: 100%;
}

#submitbtn {
	margin-bottom: 80px;
	margin-top: 80px;
}
</style>
<script type="text/javascript">

	function formcheck() {

		//비밀번호
		var userpwd = document.getElementById("userpwd");
		var reg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$/;

		if (userpwd.value == "") {
			alert("비밀번호를 입력해주세요");
			userpwd.focus();
			return false;
		}
		if (!reg.test(userpwd.value)) {
			alert("비밀번호는 8~16자리 영문,숫자,특수문자가 각각\n1개 이상 존재해야합니다");
			userpwd.focus();
			return false;
		}

		//비밀번호확인
		var userpwdcheck = document.getElementById("userpwdcheck");

		if (userpwdcheck.value == "") {
			alert("비밀번호를 확인해주세요");
			userpwdcheck.focus();
			return false;
		}
		if (userpwdcheck.value != userpwd.value) {
			alert("비밀번호가 일치하지 않습니다");
			userpwdcheck.focus();
			return false;
		}

		//닉네임
		reg = /^[가-힣0-9a-zA-Z]{2,8}$/;
		var name = document.getElementById("name");

		if (name.value == "") {
			//공백인경우
			alert("닉네임을 입력하세요");
			name.focus();
			return false;
		}
		if (!reg.test(name.value)) {//정규표현식에 맞으면 true
			alert("2글자 이상 입력해주세요");
			name.focus();
			return false;
		}
		return true;
	}
</script>

	<div class="container" id="main">
		<a href="${url}/" title="홈으로"><img src="../img/mainicon.png"
			class="mx-auto d-block" style="height: 400px;" /></a>

		<div id="profilefrm">
			<form method="post" action="/myapp/member/memberEditOk" onsubmit="return formcheck()" enctype="multipart/form-data">
				<ul>
					<li>아이디(이메일)</li>
					<li><input type="text" name="userid" id="userid"
						maxlength="40" disabled="disabled"
						value="${vo.userid }" /></li>
					<li>비밀번호 변경</li>
					<li><input type="password" id="userpwd" name="userpwd"
						maxlength="20"/></li>
					<li>비밀번호 확인</li>
					<li><input type="password" id="userpwdcheck"
						name="userpwdcheck" maxlength="20" /></li>
					<li>닉네임 변경</li>
					<li><input type="text" id="name" name="name"
						placeholder="2~8자리의 영문,숫자,한글조합" maxlength="8" value="${vo.name }" /></li>
					<li>프로필 사진 등록</li>
					<li><input type="file" class="form-control-file border" name="imgName" id="img"/></li>		
					<li>
						<input type="submit" value="등록" id="submitbtn" style="font-size: 1em;" class="btn btn-secondary" />
					</li>
				</ul>
			</form>
		</div>
	</div>