<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>

body {
	background-image: url("${url}/img/서울.jpg");
	margin: 0;
	padding: 0;
	font-family: KOTRAHOPE;
}




</style>



<!-- javascript javascript javascript javascript javascript javascript javascript javascript javascript-->

<script type="text/javascript">
	$(function() {
		var c1 = "seoul1";
	});
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

	<!-- body컨텐츠   body컨텐츠   body컨텐츠   body컨텐츠   body컨텐츠   body컨텐츠   body컨텐츠   body컨텐츠   body컨텐츠   body컨텐츠    -->

	<div class="container" id="main">
		<div id="accodion">
			<div id="card" class="menu">
				<div class="mycard" data-target="#남산타워" data-toggle="collapse"
					title="남산타워">
					<div class="card_title">남산서울타워</div>
					<div class="card_image">
						<img src='../img/seoul/남산타워.jpg'>
					</div>
					<div class="card_star">
						<i class="fa fa-star" style="font-size: 15px; color: red;"></i>
						<c:forEach var="vo" items="${lst}" begin="0" end="0">
						<span>${vo.avgstar }</span>
						</c:forEach>
						
					</div>
				</div>
				<div class="mycard" data-target="#경복궁" data-toggle="collapse"
					title="경복궁">
					<div class="card_title">경복궁</div>
					<div class="card_image">
						<img src="../img/seoul/경복궁.jpg">
					</div>
					<div class="card_star">
						<i class="fa fa-star" style="font-size: 15px; color: red;"></i>
						<c:forEach var="vo" items="${lst}" begin="1" end="1">
						<span>${vo.avgstar }</span>
						</c:forEach>
					</div>
				</div>
				<div class="mycard" data-target="#서울숲" data-toggle="collapse"
					title="서울숲">
					<div class="card_title">서울숲</div>
					<div class="card_image">
						<img src="../img/seoul/서울숲.jpg">
					</div>
					<div class="card_star">
						<i class="fa fa-star" style="font-size: 15px; color: red;"></i>
						<c:forEach var="vo" items="${lst}" begin="2" end="2">
						<span>${vo.avgstar }</span>
						</c:forEach>
					</div>
				</div>
				<div class="mycard" data-target="#서울어린이대공원" data-toggle="collapse"
					title="서울어린이대공원">
					<div class="card_title">서울어린이대공원</div>
					<div class="card_image">
						<img src="../img/seoul/서울어린이대공원.jpg">
					</div>
					<div class="card_star">
						<i class="fa fa-star" style="font-size: 15px; color: red;"></i>
						<c:forEach var="vo" items="${lst}" begin="3" end="3">
						<span>${vo.avgstar }</span>
						</c:forEach>
					</div>
				</div>
				<div class="mycard" data-target="#덕수궁" data-toggle="collapse"
					title="덕수궁">
					<div class="card_title">덕수궁</div>
					<div class="card_image">
						<img src="../img/seoul/덕수궁.jpg">
					</div>
					<div class="card_star">
						<i class="fa fa-star" style="font-size: 15px; color: red;"></i>
						<c:forEach var="vo" items="${lst}" begin="4" end="4">
						<span>${vo.avgstar }</span>
						</c:forEach>
					</div>
				</div>
				
				
				
				
				
				
				
			</div>

			<div id="남산타워" class="collapse main2 
			<c:if test="${location=='남산서울타워' || location == '남산타워' || location == 'seoultower'}">show</c:if>
			" data-parent="#accodion">
				<div class="content_image">
					<img src="../img/seoul/남산타워.jpg">
				</div>
				<div class="content_info">
					<ul>
						<li>주소 : 서울 용산구 남산공원길105</li>
						<li>찾아오는길 : 지하철 3,4호선 충무로역 2번출구 대한극장 앞, 동대입구 6번출구 앞에서 순환버트 탑승</li>
						<li>영업시간 : 12:00~21:00</li>
						<li>입장료
							<ul>
								<li>전망대(대인) : 16000원</li>
								<li>전망대(소인) : 11000원</li>
							</ul>
					</ul>
				</div>
				<div class="content_main">
					<span>‘남산서울타워’는 효율적인 방송전파 송수신과 한국의 전통미를 살린 관광 전망시설의 기능을 겸비한
						국내 최초의 종합전파 탑으로 방송문화와 관광산업의 미래를 위해 건립되었습니다.<br /> 세계 유명한 종합 탑들이 그
						나라 또는 그 도시의 상징적인 존재가 된 것처럼 '남산서울타워' 역시 지난 40여 년간 대한민국의 대표적인 관광지이자
						서울의 상징물 역할을 해왔습니다.<br /> ‘남산서울타워’는 서울 시내 전 지역에서 바라보이는 탑의 높이와 독특한
						구조, 형태 등으로 인하여 시민의 관심과 사랑의 대상이 되었고, 내외국인들이 즐겨 찾는 제1의 관광 명소로서의 위치를
						확고히 하고 있습니다. 최근에는 한류 바람을 몰고 온 각종 예능, 드라마의 촬영지로 이름이 높아지면서 내외국인
						관광객들이 발길이 끊이지 않는 곳입니다.
					</span>
				</div>
				
				
				<div class="content_btn">
					<a href="#gmap" class="btn btn-primary" data-toggle="collapse">지도
						보기/숨기기</a>
				</div>
				<div class="collapse show content_map" id="gmap">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3163.165108154953!2d126.98603791535109!3d37.551173632765334!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca257a88e6aa9%3A0x5cf8577c2e7982a5!2zTuyEnOyauO2DgOybjA!5e0!3m2!1sko!2skr!4v1645592019172!5m2!1sko!2skr"
						width="600" height="450" style="border: 0;"
						allowfullscreen="false" loading="lazy"></iframe>
				</div>





				<div class="content_review">
					<c:forEach var="vo" items="${seoultower}">
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
					<form method="post" action="${url}/web/reviewOk?location=seoultower&city=seoul" id="reviewform" name="reviewform"
						class="reviewform" enctype="multipart/form-data"
						onsubmit="return formcheck('review_area남산서울타워')">
						<textarea name="content" id="review_area남산서울타워"
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


			<div id="경복궁" class="collapse main2
			<c:if test="${location=='경복궁' || location == 'gyeongbokgung'}">show</c:if>
			" data-parent="#accodion">
				<div class="content_image">
					<img src="../img/seoul/경복궁.jpg">
				</div>
				<div class="content_info">
					<ul>
						<li>주소 : 서울특별시 종로구 사직로 161</li>
						<li>찾아오는길 : 서울 지하철 3호선 경복궁역 5번출구, 5호선 광화문역 2번출구.</li>
						<li>영업시간 : 09:00 ~ 17:00</li>
						<li>입장료
							<ul>
								<li>대인(만25세~64세) : 3000원</li>
								<li>만24세이하 청소년 : 무료</li>
								<li>만65세이상 어르신 : 무료</li>
								<li>장애인 국가유공자 : 무료</li>
								<li>한복을 착용한자 : 무료</li>
							</ul>
						</li>

					</ul>
				</div>
				<div class="content_main">
					경복궁(景福宮)은 태조4년(1395년)에 창건된 조선의 법궁(法宮)으로 대한민국을 대표하는 문화유산입니다.<br>
					경복궁(景福宮)의 ‘景福’이란 말은 조선의 학자 정도전이 『시경(詩經)』, 「주아(周兒)」편에 나오는
					‘기취이주(旣醉以酒) 기포이덕(旣飽以德) 군자만년(君子萬年) 개이경복(介爾景福)’에서 발췌하여 이름 지었습니다. ‘이미
					술에 취하고 덕에 배부르니 군자만년 그대의 큰 복을 도우리.’라는 구절에서 따온 ‘경복(景福)’의 의미는 길이길이 크게
					복을 누린다는 말로 나라의 번영을 기원하는 것입니다.<br> 경복궁은 풍수지리 사상을 따라 주산인
					백악(북악산)이 뒤에 있고, 앞에는 물이 흐르는 명당자리에 위치하였습니다. 동쪽으로는 종묘, 서쪽으로는 사직단을
					두었으며, 조선왕조의 기틀을 마련한 법궁으로서의 위상을 지녔습니다.<br> 경복궁은 창건 이래 확장과 중건이
					지속적으로 이루어졌으며, 조선의 번영과 더불어 화재와 외세에 의하여 많은 건물이 훼손되었던 아픈 역사를 간직하고
					있습니다.<br> 문화재청은 경복궁의 본래의 모습을 회복하기 위하여 1990년부터 복원사업을 지속적으로 추진하고
					있으며, 경복궁관리소 전 직원은 우리의 소중한 문화유산인 경복궁의 가치를 잘 보존하도록 노력하고 있습니다. 더불어 모든
					국민이 자긍심을 갖고 우리 선조들의 지혜와 숨결이 깃들여 있는 경복궁의 찬란한 민족문화를 계승 발전시키도록 함께 노력해
					나가겠습니다.
				</div>
				<div class="content_btn">
					<a href="#gmap" class="btn btn-primary" data-toggle="collapse">지도
						보기/숨기기</a>
				</div>
				<div class="collapse show content_map" id="gmap">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3161.9573820035735!2d126.97485231535184!3d37.57962123113623!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca2c74aeddea1%3A0x8b3046532cc715f6!2z6rK967O16raB!5e0!3m2!1sko!2skr!4v1645601696658!5m2!1sko!2skr"
						allowfullscreen="false" loading="lazy"></iframe>
				</div>





				<div class="content_review">
					<c:forEach var="vo" items="${gyeongbokgung}">
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
					<form method="post" action="${url}/web/reviewOk?location=gyeongbokgung&city=seoul" id="reviewform" name="reviewform"
						class="reviewform" enctype="multipart/form-data"
						onsubmit="return formcheck('review_area경복궁')">
						<textarea name="content" id="review_area경복궁"
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




			<div id="서울숲" class="collapse main2 
			<c:if test="${location=='서울숲' || location == 'seoulforest'}">show</c:if>
			" data-parent="#accodion">
				<div class="content_image">
					<img src="../img/seoul/서울숲.jpg">
				</div>
				<div class="content_info">
					<ul>
						<li>서울 성동구 뚝섬로 273</li>
						<li>찾아오는길 : 서울 분당선 서울숲역 3번 출구 , 2호선 뚝섬역 8번 출구</li>
						<li>영업시간 : 연중무휴</li>
						<li>입장료
							<ul>
								<li>무료</li>

							</ul>
						</li>

					</ul>
				</div>
				<div class="content_main">
					서울숲은 문화예술공원, 체험학습원, 생태숲, 습지생태원 네 가지의 특색 있는 공간들로 구성되어 있으며, 한강과 맞닿아
					있어 다양한 문화여가공간을 제공합니다.<br /> 또한 서울숲공원은 조성부터 프로그램 운영까지 시민의 참여로 이루어진
					최초의 공원입니다.
				</div>
				<div class="content_btn">
					<a href="#gmap" class="btn btn-primary" data-toggle="collapse">지도
						보기/숨기기</a>
				</div>
				<div class="collapse show content_map" id="gmap">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3163.452901909802!2d127.03525371535099!3d37.544392033153485!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca37d51f4f62b%3A0xdd9b9865be0f469a!2z7ISc7Jq47Iiy6rO17JuQ!5e0!3m2!1sko!2skr!4v1645671400368!5m2!1sko!2skr"
						allowfullscreen="false" loading="lazy"></iframe>
				</div>






				<div class="content_review">
					<c:forEach var="vo" items="${seoulforest}">
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
					<form method="post" action="${url}/web/reviewOk?location=seoulforest&city=seoul" id="reviewform" name="reviewform"
						class="reviewform" enctype="multipart/form-data"
						onsubmit="return formcheck('review_area서울숲')">
						<textarea name="content" id="review_area서울숲"
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
			

			<div id="서울어린이대공원" class="collapse main2 
			<c:if test="${location=='서울어린이대공원' || location == '어린이대공원' || location == 'childrengrandpark'}">show</c:if>
			" data-parent="#accodion">
				<div class="content_image">
					<img src="../img/seoul/서울어린이대공원.jpg">
				</div>
				<div class="content_info">
					<ul>
						<li>주소 : 서울특별시 광진구 능동로 216</li>
						<li>찾아오는길 : 서울 지하철 5호선 아차산역 4번출구 , 7호선 어린이대공원역 1번출구</li>
						<li>영업시간 : 05:00 ~ 22:00</li>
						<li>입장료
							<ul>
								<li>무료</li>

							</ul>
						</li>

					</ul>
				</div>
				<div class="content_main">
					우리 서울어린이대공원은 53만여㎡의 넓은 공간 속에 동물원, 식물원, 놀이동산 및 다양한 공연시설과 체험공간이 가득한
					어린이 가족테마공원입니다.<br /> 1973년 5월 5일(제51회 어린이날) 개원한 이후 도심 속 쉼터로 시민
					여러분들께 꾸준한 사랑을 받아온 어린이대공원은 이용시민들의 관람 편의성 향상을 위해 낡고 불편해진 시설을 교체하는 단계적
					리모델링 사업을 통해 2009년 5월 5일 재탄생 하였습니다.<br /> 또한, 어린이 및 가족을 대상으로 한 다양한
					종류의 체험프로그램(동물학교, 생태탐방교실 등)을 상시 운영하고 있습니다.<br /> 앞으로도 우리 서울어린이대공원
					가족들은 지속적인 노후 시설개선과 신규 체험프로그램 개발, 최상의 친절서비스로 모든 이용시민 여러분을 안전하게 모시는데
					최선을 다하겠습니다. 감사합니다.
				</div>
				<div class="content_btn">
					<a href="#gmap" class="btn btn-primary" data-toggle="collapse">지도
						보기/숨기기</a>
				</div>
				<div class="collapse show content_map" id="gmap">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3163.241771479692!2d127.07962391535116!3d37.5493672328688!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca4d713856077%3A0x169df594b1f221cc!2z7Ja066aw7J2064yA6rO17JuQ!5e0!3m2!1sko!2skr!4v1645672015603!5m2!1sko!2skr"
						allowfullscreen="false" loading="lazy"></iframe>
				</div>



				<div class="content_review">
					<c:forEach var="vo" items="${childrengrandpark}">
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
					<form method="post" action="${url}/web/reviewOk?location=childrengrandpark&city=seoul" id="reviewform" name="reviewform"
						class="reviewform" enctype="multipart/form-data"
						onsubmit="return formcheck('review_area서울어린이대공원')">
						<textarea name="content" id="review_area서울어린이대공원"
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




			<div id="덕수궁" class="collapse main2 
			<c:if test="${location=='덕수궁' || location=='deoksugung'}">show</c:if>
			" data-parent="#accodion">
				<div class="content_image">
					<img src="../img/seoul/덕수궁.jpg">
				</div>
				<div class="content_info">
					<ul>
						<li>주소 : 서울특별시 중구 세종대로 99 덕수궁</li>
						<li>찾아오는길 : 서울 지하철 1,2호선 시청역 1번 출구</li>
						<li>영업시간 : 09:00 ~ 20:00</li>
						<li>입장료
							<ul>
								<li>일반권(만25세~64세) : 1000원</li>
								<li>6세이하, 65세이상 : 무료</li>
								<li>매월 마지막 주 수요일'문화가 있는 날' : 무료</li>
								<li>한복을 착용한 자 : 무료</li>
							</ul>
						</li>

					</ul>
				</div>
				<div class="content_main">
					덕수궁은 1592년 임진왜란이 일어나자 의주로 피난 갔던 선조가 다시 한양으로 돌아왔을 때, 월산대군 저택과 그 주변
					민가를 여러 채 합하여 ‘시어소’로 정하여 행궁[정릉동 행궁]으로 삼았던 것으로부터 시작됩니다. 이후 광해군이 즉위한 후
					창덕궁으로 거처를 옮기면서 ‘경운궁’이란 이름을 사용하게 되었습니다. 궁궐의 모습을 갖춘 덕수궁은 인목대비 유폐와
					인조반정을 겪으면서 규모가 축소되었고, 특히 인조가 즉위한 이후 즉조당과 석어당을 제외한 나머지는 원래 주인에게
					돌려주었습니다. 이로써 덕수궁은 더 이상 왕이 공식적으로 머물며 국정업무를 보던 궁궐의 기능을 하지 못하였습니다.<br />

					1895년 을미사변이 일어난 이후 덕수궁이 다시 역사에 등장하게 되었습니다. 을미사변으로 신변의 위협을 느낀 고종이
					러시아공사관으로 거처를 옮긴 후, 1897년 2월에 덕수궁으로 환궁하게 되었습니다. 또한 대한제국이라는 황제국을 선포한
					후 황궁으로서의 규모와 격식을 갖추게 되었습니다. 하지만 1904년 덕수궁 대화재와 1907년 고종의 강제퇴위 이후
					덕수궁은 그 규모가 대폭 축소되었습니다. 이때 경운궁에서 덕수궁으로 이름 또한 바뀌게 되었습니다.
				</div>
				<div class="content_btn">
					<a href="#gmap" class="btn btn-primary" data-toggle="collapse">지도
						보기/숨기기</a>
				</div>
				<div class="collapse show content_map" id="gmap">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.561775571368!2d126.97344880091859!3d37.5653872318523!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca28d3199c531%3A0x7a2d35df0efd2d8!2z642V7IiY6raB!5e0!3m2!1sko!2skr!4v1645675865808!5m2!1sko!2skr"
						width="600" height="450" style="border: 0;" allowfullscreen=""
						loading="lazy"></iframe>
				</div>



				<div class="content_review">
					<c:forEach var="vo" items="${deoksugung}">
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
					<form method="post" action="${url}/web/reviewOk?location=deoksugung&city=seoul" id="reviewform" name="reviewform"
						class="reviewform" enctype="multipart/form-data"
						onsubmit="return formcheck('review_area덕수궁')">
						<textarea name="content" id="review_area덕수궁"
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
