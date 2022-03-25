<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<style>

body {
	margin: 0;
	padding: 0;
	font-family: KOTRAHOPE;
	background-image: url("${url}/img/부산.jpg");
}





</style>

<!-- javascript javascript javascript javascript javascript javascript javascript javascript javascript-->

<script type="text/javascript">


	function formcheck(name) {
		//리뷰내용 비었는지 확인하기
		var reviewform = document.getElementById(name);
		if (reviewform.value == "") {
			alert("내용을 입력하세요");
			reviewform.focus();
			return false;
		}
		return true;
	}
</script>

</head>
<body>
	<!-- body컨텐츠   body컨텐츠   body컨텐츠   body컨텐츠   body컨텐츠   body컨텐츠   body컨텐츠   body컨텐츠   body컨텐츠   body컨텐츠    -->

	<div class="container" id="main">
		<div id="accodion">
			<div id="card" class="menu">
				<div class="mycard" data-target="#해운대" data-toggle="collapse"
					title="해운대">
					<div class="card_title">해운대해수욕장</div>
					<div class="card_image">
						<img src="../img/busan/해운대.jpg">
					</div>
					<div class="card_star">
						<i class="fa fa-star" style="font-size: 15px; color: red;"></i>
						<c:forEach var="vo" items="${lst}" begin="0" end="0">
						<span>${vo.avgstar }</span>
						</c:forEach>
					</div>
				</div>
				<div class="mycard" data-target="#국제시장" data-toggle="collapse"
					title="국제시장">
					<div class="card_title">국제시장</div>
					<div class="card_image">
						<img src="../img/busan/국제시장.jpg">
					</div>
					<div class="card_star">
						<i class="fa fa-star" style="font-size: 15px; color: red;"></i>
						<c:forEach var="vo" items="${lst}" begin="1" end="1">
						<span>${vo.avgstar }</span>
						</c:forEach>
					</div>
				</div>
				<div class="mycard" data-target="#용두산공원" data-toggle="collapse"
					title="용두산공원">
					<div class="card_title">용두산공원</div>
					<div class="card_image">
						<img src="../img/busan/용두산공원.jpg">
					</div>
					<div class="card_star">
						<i class="fa fa-star" style="font-size: 15px; color: red;"></i>
						<c:forEach var="vo" items="${lst}" begin="2" end="2">
						<span>${vo.avgstar }</span>
						</c:forEach>
					</div>
				</div>
			</div>


			<!-- 메인 컨텐츠   메인 컨텐츠   메인 컨텐츠   메인 컨텐츠   메인 컨텐츠   메인 컨텐츠   메인 컨텐츠   메인 컨텐츠   메인 컨텐츠   메인 컨텐츠   메인 컨텐츠   -->

			<div id="해운대" class="collapse 
			<c:if test="${location=='해운대' || location == '해운대해수욕장' || location == 'Haeundae'}">show</c:if>
			 main2" data-parent="#accodion">
				<div class="content_image">
					<img src="../img/busan/해운대.jpg">
				</div>
				<div class="content_info">
					<ul>
						<li>주소 : 부산 해운대구 우동</li>
						<li>찾아오는길 : 지하철 2호선 해운대역 5번 출구</li>
						<li>영업시간 :</li>
						<li>입장료 없음 (편의시설 이용료 별도)
					</ul>
				</div>
				<div class="content_main">
					백사장 길이가 1.5km, 폭 70~90m, 면적 120,000㎡로 수심이 얕고 조수의 변화가 심하지 않으며 주변에
					오락시설과 부대시설이 많아 해마다 천만명이 넘는피서객이 찾아오고 있다. 또한 매년 해수욕장 개장과 어울러 각종행사와
					축제가 개최되어 해운대를 찾는 관광객들에게 풍성한 볼거리를 제공하고 있다.<br /> 해수욕장 입구에 들어서 있는
					부산아쿠아리움을 비롯해 해운대관광안내소가 있으며 해맞이축제, 달맞이온천축제,바다축제 등 연중 다양한 볼거리와 즐길거리가
					있다. 특히 해운대해수욕장 해변을 끼고 자리잡은 특1급 호텔들은 부산국제영화제, 2005 APEC 정상회의 등 국제 행사
					경험이 풍부해 해운대 해수욕장을 세계적인 해수욕장으로 만드는데 일조를 한다.
				</div>
				<div class="content_btn">
					<a href="#gmap" class="btn btn-primary" data-toggle="collapse">지도
						보기/숨기기</a>
				</div>
				<div class="collapse show content_map" id="gmap">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13047.667036417368!2d129.15160797684888!3d35.15869668356347!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35688d5c0efe075f%3A0x9963b1d5c163ac98!2z7ZW07Jq064yA7ZW07IiY7JqV7J6l!5e0!3m2!1sko!2skr!4v1645679096088!5m2!1sko!2skr"
						width="600" height="450" style="border: 0;" allowfullscreen=""
						loading="lazy"></iframe>
				</div>



				<div class="content_review">
					<c:forEach var="vo" items="${Haeundae}">
						<div class="review">
							<div class="review_profile">
								<div class="review_profile_img">
										<c:if test="${vo.img =='' || vo.img == null }">
											<img src='${url}/img/sampleProfile.jpg' class="rounded-circle">
										</c:if>
										<c:if test="${vo.img !='' && vo.img != null }">
											<img src='${url}/upload/${vo.img}' class="rounded-circle">
										</c:if>
								</div>
								<div class="review_profile_name">${vo.name}</div>
							</div>
							<div class="review_content">
								<div class="review_content2">${vo.content }</div>
								<div class="review_star">
									<i class="fa fa-star" style="font-size: 15px; color: red;"></i>
									<span>${vo.star }</span>
								</div>
							</div>
							<div class="review_img">
								<c:if test="${vo.reviewimg !='' && vo.reviewimg != null }">
									<img src='${url}/upload/${vo.reviewimg}'>
								</c:if>
								
							</div>
							<div class="review_date">
								${vo.writedate}
							</div>
						</div>
					</c:forEach>
				</div>




				<div class="content_review_write">
					<h2>리뷰작성</h2>
					<div>최대 문자수 : 60</div>
					<form method="post" action="${url}/web/reviewOk?location=Haeundae&city=busan" id="reviewform" name="reviewform"
						class="reviewform" enctype="multipart/form-data"
						onsubmit="return formcheck('review_area해운대해수욕장')">
						<textarea name="content" id="review_area해운대해수욕장"
							cols="50" rows="5" maxlength="59" placeholder="내용을 입력하세요"></textarea>
						<div class="form-check-inline">
							<label class="form-check-label star"> <input type="radio"
								class="form-check-input" name="star" id="star" value="5" checked><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i> <i
								class="fa fa-star" style="font-size: 12px; color: red;"></i><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i> <i
								class="fa fa-star" style="font-size: 12px; color: red;"></i><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i>
							</label>
						</div>
						<div class="form-check-inline">
							<label class="form-check-label star"> <input type="radio"
								class="form-check-input" name="star" id="star" value="4"><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i> <i
								class="fa fa-star" style="font-size: 12px; color: red;"></i><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i>
							</label>
						</div>
						<div class="form-check-inline disabled">
							<label class="form-check-label star"> <input type="radio"
								class="form-check-input" name="star" id="star" value="3"><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i> <i
								class="fa fa-star" style="font-size: 12px; color: red;"></i>
							</label>
						</div>
						<div class="form-check-inline">
							<label class="form-check-label star"> <input type="radio"
								class="form-check-input" name="star" id="star" value="2"><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i>
							</label>
						</div>
						<div class="form-check-inline">
							<label class="form-check-label star"> <input type="radio"
								class="form-check-input" name="star" id="star" value="1"><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i>
							</label>
							
						</div>
						<input type="file" class="form-control-file border"  name="imgName" id="reviewimg">
						<input type="submit" value="등 록" class="btn btn-primary reviewbtn" />
					</form>
				</div>
			</div>


			<div id="국제시장" class="collapse main2 
			<c:if test="${location=='국제시장' || location == 'Internationalmarket'}">show</c:if>
			" data-parent="#accodion">
				<div class="content_image">
					<img src="../img/busan/국제시장.jpg">
				</div>
				<div class="content_info">
					<ul>
						<li>주소 : 부산 중구 국제시장2길25</li>
						<li>찾아오는길 : 1호선 자갈치역 7번출구</li>
						<li>영업시간 :  ~ 20:00</li>
						<li>입장료
							<ul>
								<li> 무료 </li>
								
							</ul>
						</li>

					</ul>
				</div>
				<div class="content_main">
					부산광역시 중구 대청동3가, 신창동2가, 신창동3가, 신창동4가, 창선동2가에 있는 재래시장이다. 부산의 또다른 대형시장 자갈치시장이나 깡통시장, 근래 유명해진 보수동 책방골목 등과도 길 하나 가운데 두고 마주보고 있다.<br/>
					1945년 광복이 되자 일본인들이 철수하면서 전시물자를 팔아 돈을 챙기기 위해 국제시장 자리를 장터로 삼으면서 시장이 형성되었다.<br/>
					한국전쟁 후 피난민들이 장사를 하며 활기를 띠었고, 미군의 군용 문자와 함께 부산항으로 밀수입된 온갖 상품들이 이곳을 통해 전국으로 공급되었다.
				</div>
				<div class="content_btn">
					<a href="#gmap" class="btn btn-primary" data-toggle="collapse">지도
						보기/숨기기</a>
				</div>
				<div class="collapse show content_map" id="gmap">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3264.229944654147!2d129.02692975074714!3d35.10096866908661!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x356893547acc827d%3A0xf0d4564e7e915016!2z6rWt7KCc7Iuc7J6l!5e0!3m2!1sko!2skr!4v1648103825460!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
				</div>
				



				<div class="content_review">
					<c:forEach var="vo" items="${Internationalmarket}">
						<div class="review">
							<div class="review_profile">
								<div class="review_profile_img">
										<c:if test="${vo.img =='' || vo.img == null }">
											<img src='${url}/img/sampleProfile.jpg' class="rounded-circle">
										</c:if>
										<c:if test="${vo.img !='' && vo.img != null }">
											<img src='${url}/upload/${vo.img}' class="rounded-circle">
										</c:if>
								</div>
								<div class="review_profile_name">${vo.name}</div>
							</div>
							<div class="review_content">
								<div class="review_content2">${vo.content }</div>
								<div class="review_star">
									<i class="fa fa-star" style="font-size: 15px; color: red;"></i>
									<span>${vo.star }</span>
								</div>
							</div>
							<div class="review_img">
								<c:if test="${vo.reviewimg !='' && vo.reviewimg != null }">
									<img src='${url}/upload/${vo.reviewimg}'>
								</c:if>
							</div>
							<div class="review_date">
								${vo.writedate}
							</div>
						</div>
					</c:forEach>
				</div>
				
				



				<div class="content_review_write">
					<h2>리뷰작성</h2>
					<div>최대 문자수 : 60</div>
					<form method="post" action="${url}/web/reviewOk?location=Internationalmarket&city=busan" id="reviewform" name="reviewform"
						class="reviewform" enctype="multipart/form-data"
						onsubmit="return formcheck('review_area국제시장')">
						<textarea name="content" id="review_area국제시장"
							cols="50" rows="5" maxlength="59" placeholder="내용을 입력하세요"></textarea>
						<div class="form-check-inline">
							<label class="form-check-label star"> <input type="radio"
								class="form-check-input" name="star" id="star" value="5" checked><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i> <i
								class="fa fa-star" style="font-size: 12px; color: red;"></i><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i> <i
								class="fa fa-star" style="font-size: 12px; color: red;"></i><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i>
							</label>
						</div>
						<div class="form-check-inline">
							<label class="form-check-label star"> <input type="radio"
								class="form-check-input" name="star" id="star" value="4"><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i> <i
								class="fa fa-star" style="font-size: 12px; color: red;"></i><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i>
							</label>
						</div>
						<div class="form-check-inline disabled">
							<label class="form-check-label star"> <input type="radio"
								class="form-check-input" name="star" id="star" value="3"><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i> <i
								class="fa fa-star" style="font-size: 12px; color: red;"></i>
							</label>
						</div>
						<div class="form-check-inline">
							<label class="form-check-label star"> <input type="radio"
								class="form-check-input" name="star" id="star" value="2"><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i>
							</label>
						</div>
						<div class="form-check-inline">
							<label class="form-check-label star"> <input type="radio"
								class="form-check-input" name="star" id="star" value="1"><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i>
							</label>
							
						</div>
						<input type="file" class="form-control-file border"  name="imgName" id="reviewimg">
						<input type="submit" value="등 록" class="btn btn-primary reviewbtn" />
					</form>
				</div>
				
				
				
			</div>





			<div id="용두산공원" class="collapse main2 
			<c:if test="${location=='용두산공원' || location == 'YongdusanPark'}">show</c:if>
			" data-parent="#accodion">
				<div class="content_image">
					<img src="../img/busan/용두산공원.jpg">
				</div>
				<div class="content_info">
					<ul>
						<li>부산광역시 중구 용두산길 37-55</li>
						<li>찾아오는길 : 1호선 중앙역 1번출구</li>
						<li>영업시간 : 연중무휴</li>
						<li>입장료
							<ul>
								<li>무료</li>
							</ul>
						</li>

					</ul>
				</div>
				<div class="content_main">
					용두산은 부산시내에 있는 구릉으로서 부산 3명산의 하나이다. 옛날에는 울창한 소나무 사이로 바다가 보였다 하여 송현산이라 하였다가 그후 산세가 흡사 용 모양이어서 일본에서 건너오는 왜구들을 삼켜버릴 기상이라 하여 용두산이라고 부르게 되었다<br/>
					815광복 전에는 일본인들이 신사를 세웠던 산이며, 지금은 척화비충혼탑419의거기념탑, 이충무공 동상 등이 있고, 부산탑이 세워졌다. 625전쟁 때는 피난민들이 산꼭대기까지 판잣집을 지었는데 2차에 걸친 대화재로 민둥산이 되었으나, 그 후 식림에 주력한 결과 지금은 아름다운 공원으로 가꾸어졌다. 자유당 때에 우남공원이라 하다가 4 19 혁명 후에 다시 용두산공원으로 환원되었다. 부산항과 영도가
					내려다보이는 경승지이며, 특히 부산탑에서 내려다보는 야경이 아름답다.
				</div>
				<div class="content_btn">
					<a href="#gmap" class="btn btn-primary" data-toggle="collapse">지도
						보기/숨기기</a>
				</div>
				<div class="collapse show content_map" id="gmap">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3264.2423855685133!2d129.03042855074708!3d35.10065796910332!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3568e90b3617c897%3A0xbe1730484bbfa93f!2z7Jqp65GQ7IKw6rO17JuQ!5e0!3m2!1sko!2skr!4v1648104520481!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
				</div>



				<div class="content_review">
					<c:forEach var="vo" items="${YongdusanPark}">
						<div class="review">
							<div class="review_profile">
								<div class="review_profile_img">
										<c:if test="${vo.img =='' || vo.img == null }">
											<img src='${url}/img/sampleProfile.jpg' class="rounded-circle">
										</c:if>
										<c:if test="${vo.img !='' && vo.img != null }">
											<img src='${url}/upload/${vo.img}' class="rounded-circle">
										</c:if>
								</div>
								<div class="review_profile_name">${vo.name}</div>
							</div>
							<div class="review_content">
								<div class="review_content2">${vo.content }</div>
								<div class="review_star">
									<i class="fa fa-star" style="font-size: 15px; color: red;"></i>
									<span>${vo.star }</span>
								</div>
							</div>
							<div class="review_img">
								<c:if test="${vo.reviewimg !='' && vo.reviewimg != null }">
									<img src='${url}/upload/${vo.reviewimg}'>
								</c:if>
							</div>
							<div class="review_date">
								${vo.writedate}
							</div>
						</div>
					</c:forEach>
				</div>



				<div class="content_review_write">
					<h2>리뷰작성</h2>
					<div>최대 문자수 : 60</div>
					<form method="post" action="${url}/web/reviewOk?location=YongdusanPark&city=busan" id="reviewform" name="reviewform"
						class="reviewform" enctype="multipart/form-data"
						onsubmit="return formcheck('review_area용두산공원')">
						<textarea name="content" id="review_area용두산공원"
							cols="50" rows="5" maxlength="59" placeholder="내용을 입력하세요"></textarea>
						<div class="form-check-inline">
							<label class="form-check-label star"> <input type="radio"
								class="form-check-input" name="star" id="star" value="5" checked><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i> <i
								class="fa fa-star" style="font-size: 12px; color: red;"></i><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i> <i
								class="fa fa-star" style="font-size: 12px; color: red;"></i><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i>
							</label>
						</div>
						<div class="form-check-inline">
							<label class="form-check-label star"> <input type="radio"
								class="form-check-input" name="star" id="star" value="4"><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i> <i
								class="fa fa-star" style="font-size: 12px; color: red;"></i><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i>
							</label>
						</div>
						<div class="form-check-inline disabled">
							<label class="form-check-label star"> <input type="radio"
								class="form-check-input" name="star" id="star" value="3"><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i> <i
								class="fa fa-star" style="font-size: 12px; color: red;"></i>
							</label>
						</div>
						<div class="form-check-inline">
							<label class="form-check-label star"> <input type="radio"
								class="form-check-input" name="star" id="star" value="2"><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i>
							</label>
						</div>
						<div class="form-check-inline">
							<label class="form-check-label star"> <input type="radio"
								class="form-check-input" name="star" id="star" value="1"><i
								class="fa fa-star" style="font-size: 12px; color: red;"></i>
							</label>
							
						</div>
						<input type="file" class="form-control-file border"  name="imgName" id="reviewimg">
						<input type="submit" value="등 록" class="btn btn-primary reviewbtn" />
					</form>
				</div>
				
				
				
				
			</div>

			




			




		</div>



	</div>
