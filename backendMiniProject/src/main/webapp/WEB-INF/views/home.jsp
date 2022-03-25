<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript">
	$(function() {
		$("#slider").bxSlider({
			mode : 'horizontal'//기본 좌우'horizontal', 'vertical', 'fade'
			,
			slideWidth : 1000,
			slideHeight : 200,
			speed : 500,
			auto : false
			//,captions:true//title속성에 있는 설명 표시
			//,adaptiveHeight:true//이미지의 크기에 따라 설명란 높이 조절
			,
			autoControls : true,
			hideControllOnEnd : true,
			useCSS : true

			,
			onSliderLoad : function() {//슬라이드 로딩이 완료되면 호출

			},
			onSlideAfter : function() {//화면전환이 완료된후 호출

			}

		});

	});
	
	function formcheck(search,city){
		<c:remove var="city" />
		var searchform = document.getElementById(search);
		var city = document.getElementById(city);
		if(searchform.value==""){
			alert("검색어를 입력해주세요");
			searchform.focus();
			return false;
		}
		else if(city.value=="seoul" && (searchform.value=="남산서울타워" || searchform.value=="남산타워" || searchform.value=="경복궁" || 
				searchform.value=="서울숲" || searchform.value=="어린이대공원" || searchform.value=="서울어린이대공원" || searchform.value=="덕수궁"))
		{

			return true;
		}
		else if(city.value=="busan" && (searchform.value=="해운대" || searchform.value=="해운대해수욕장" || searchform.value=="용두산공원" || searchform.value=="국제시장" ))
		{

			
			return true;
		}

		return false;
	}
</script>

	<div class="container" id="main">
		<img src="img/mainicon.png" class="mx-auto d-block"
			style="height: 400px;" />
			
			

		<div id="searchdiv">
		
			<form method="get" action="${url}/web/go" onsubmit="return formcheck('searchbar','city')" id="searchform">
				<img src="img/search.png" id="searchicon"> 
				
					<select class="form-control" id="city" name="city">
					    	<option value="seoul">서울</option>
					    	<option value="busan">부산</option>
					    	<option value="incheon">인천</option>
					    	<option value="jeju">제주</option>
					    	<option value="gangwon">강원</option>
					    	<option value="gyeonggi">경기</option>
					    	<option value="gyeongsang">경상</option>
					    	<option value="chungcheong">충청</option>
					    	<option value="daejeon">대전</option>
					    	<option value="daegu">대구</option>
					    	<option value="gwangju">광주</option>
					    	<option value="jeolla">전라</option>
					    	
					  	</select>
				<input type="text" style="font-size: 2em;" placeholder="찾고싶은 관광지가 있나요? ex)경복궁" id="searchbar" name="location" /> 
				<input type="submit" style="font-size: 2em;" value="검색"  id="searchbtn" />
			</form>
		</div>

		<h1 style="text-align: center; margin-top: 100px;">관심있는 지역을 클릭해보세요</h1>
		<div id="picture" style="margin-bottom: 20px;">
			<img src="img/지도.jpg" class="mx-auto d-block" usemap="#koreamap">
			<map name="koreamap">
				<area target="_blank" alt="인천" title="인천" href="WEB/incheon.html"
					coords="122,75,131,112,160,118,165,99,150,95,146,75" shape="poly">
				<area target="_blank" alt="서울" title="서울" href="${url}/web/go?city=seoul&location=남산서울타워"
					coords="169,102,178,119,195,115,196,92,181,92" shape="poly">
				<area target="_blank" alt="부산/울산" title="부산/울산"
					href="${url}/web/go?city=busan&location=해운대해수욕장"
					coords="352,309,334,331,352,343,321,365,323,381,363,365,381,327"
					shape="poly">
				<area target="_blank" alt="제주" title="제주" href="WEB/jeju.html"
					coords="78,497,46,512,58,530,103,523,120,501,106,494" shape="poly">
				<area target="_blank" alt="강원" title="강원" href="WEB/gangwon.html"
					coords="201,32,239,69,231,93,252,110,244,148,320,168,379,162,337,79,306,2,294,24,270,31,231,27"
					shape="poly">
				<area target="_blank" alt="경기" title="경기" href="WEB/gyeonggi.html"
					coords="174,52,153,83,169,97,190,80,210,121,166,120,172,165,203,172,239,151,247,114,225,100,232,65,196,35,187,44"
					shape="poly">
				<area target="_blank" alt="경상" title="경상" href="WEB/gyeongsang.html"
					coords="377,172,316,172,297,196,265,196,248,244,261,257,246,274,211,348,230,385,273,397,312,382,323,356,338,345,330,332,354,306,381,319,388,273,301,321,274,321,283,288,305,274,324,275,331,292,399,259,394,196"
					shape="poly">
				<area target="_blank" alt="충청" title="충청"
					href="WEB/chungcheong.html"
					coords="239,155,308,173,296,188,263,190,243,259,222,257,218,203,218,164,197,175,157,162,123,158,103,190,133,239,141,256,180,248"
					shape="poly">
				<area target="_blank" alt="대전" title="대전" href="WEB/daejeon.htm"
					coords="197,223,209,218,216,220,219,240,201,245" shape="poly">
				<area target="_blank" alt="대구" title="대구" href="WEB/daegu.html"
					coords="314,281,293,288,284,317,306,311,318,295" shape="poly">
				<area target="_blank" alt="광주" title="광주" href="WEB/gwangju.html"
					coords="154,345,135,349,137,361,148,365,165,358" shape="poly">
				<area target="_blank" alt="전라" title="전라" href="WEB/Jeolla.html"
					coords="148,265,184,252,213,261,251,268,218,336,229,389,131,451,173,357,147,338,135,353,160,369,117,443,73,415,109,334,122,299"
					shape="poly">
			</map>
		</div>

		<div id="menu">
			<ul id="slider">
				<li>
					<div>
						<div class="sl">
							<a href="${url}/web/go?city=seoul&location=남산서울타워"><img src="img/서울.jpg"
								class="img rounded-circle" title="서울" /></a>
							<div
								style="position: absolute; left: 90px; top: 100px; font-size: 2em;">
								<a href="${url}/web/go?city=seoul&location=남산서울타워" title="서울"><b>서울</b></a>
							</div>
						</div>
						<div class="sl">
							<a href="${url}/web/go?city=busan&location=해운대해수욕장"><img src="img/부산.jpg"
								class="img rounded-circle" title="부산" /></a>
							<div
								style="position: absolute; left: 305px; top: 100px; font-size: 2em;">
								<a href="${url}/web/go?city=busan&location=해운대해수욕장" title="부산/울산"><b>부산/울산</b></a>
							</div>
						</div>
						<div class="sl">
							<a href="WEB/incheon.html"><img src="img/인천.jpg"
								class="img rounded-circle" title="인천" /></a>
							<div
								style="position: absolute; left: 580px; top: 100px; font-size: 2em;">
								<a href="busan.html" title="인천"><b>인천</b></a>
							</div>
						</div>
						<div class="sl">
							<a href="WEB/jeju.html"><img src="img/제주.jpg"
								class="img rounded-circle" title="제주" /></a>
							<div
								style="position: absolute; left: 825px; top: 100px; font-size: 2em;">
								<a href="busan.html" title="제주"><b>제주</b></a>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div>
						<div class="sl">
							<a href="WEB/gangwon.html"><img src="img/강원.png"
								class="img rounded-circle" title="강원" /></a>
							<div
								style="position: absolute; left: 90px; top: 100px; font-size: 2em;">
								<a href="WEB/seoul.html" title="강원"><b>강원</b></a>
							</div>
						</div>
						<div class="sl">
							<a href="WEB/gyeonggi.html"><img src="img/경기.jpg"
								class="img rounded-circle" title="경기" /></a>
							<div
								style="position: absolute; left: 335px; top: 100px; font-size: 2em;">
								<a href="busan.html" title="경기"><b>경기</b></a>
							</div>
						</div>
						<div class="sl">
							<a href="WEB/gyeongsang.html"><img src="img/경상.jpg"
								class="img rounded-circle" title="경상" /></a>
							<div
								style="position: absolute; left: 580px; top: 100px; font-size: 2em;">
								<a href="busan.html" title="경상"><b>경상</b></a>
							</div>
						</div>
						<div class="sl">
							<a href="WEB/chungcheong.html"><img src="img/충청.jpg"
								class="img rounded-circle" title="충청" /></a>
							<div
								style="position: absolute; left: 825px; top: 100px; font-size: 2em;">
								<a href="busan.html" title="충청"><b>충청</b></a>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div>
						<div class="sl">
							<a href="WEB/daejeon.html"><img src="img/대전.jpg"
								class="img rounded-circle" title="대전" /></a>
							<div
								style="position: absolute; left: 90px; top: 100px; font-size: 2em;">
								<a href="WEB/seoul.html" title="대전"><b>대전</b></a>
							</div>
						</div>
						<div class="sl">
							<a href="WEB/daegu.html"><img src="img/대구.jpg"
								class="img rounded-circle" title="대구" /></a>
							<div
								style="position: absolute; left: 335px; top: 100px; font-size: 2em;">
								<a href="busan.html" title="대구"><b>대구</b></a>
							</div>
						</div>
						<div class="sl">
							<a href="WEB/gwangju.html"><img src="img/광주.jpg"
								class="img rounded-circle" title="광주" /></a>
							<div
								style="position: absolute; left: 580px; top: 100px; font-size: 2em;">
								<a href="busan.html" title="광주"><b>광주</b></a>
							</div>
						</div>
						<div class="sl">
							<a href="WEB/Jeolla.html"><img src="img/전라.jpg"
								class="img rounded-circle" title="전라" /></a>
							<div
								style="position: absolute; left: 825px; top: 100px; font-size: 2em;">
								<a href="busan.html" title="전라"><b>전라</b></a>
							</div>
						</div>
					</div>
				</li>


			</ul>

		</div>

	</div>


