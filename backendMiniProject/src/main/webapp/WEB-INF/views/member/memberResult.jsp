<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 등록시 -->
<c:if test="${cnt>0 }">
	<script>
		alert("회원가입이 완료되었습니다.");
		location.href="<%=request.getContextPath() %>/member/login";
	</script>

</c:if>
<!-- 등록 실패시 -->
<c:if test="${cnt==null || cnt==0 }">
	<script>
		alert("회원등록 실패");
		history.go(-1);
	</script>
</c:if>