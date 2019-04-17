<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	 <!-- 카풀css 시작-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/Bootstrap/Carpool/car0.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/Bootstrap/Carpool/car2.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/Bootstrap/Carpool/car3.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/Bootstrap/Carpool/car6.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/Bootstrap/Carpool/car7.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/Bootstrap/Carpool/car9.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/Bootstrap/Carpool/car10.css'/>">
	<link rel="stylesheet" href="<c:url value='/Bootstrap/Carpool/car11.css'/>">
	<link rel="stylesheet" href="<c:url value='/Bootstrap/Carpool/car12.css'/>">

    <!-- 카풀css 끝-->
	<div id="wrapper" style=" margin-top: 20px;">
		<section id="box_header">
				<!-- 검색 -->
				<article class="header_bot hideClass1" style="margin-top: 20px;">
					<form id="form_src" name="form_src"
						action="http://www.tikle.co.kr/tikle/tiklelist" method="GET">
						<fieldset>
							<legend class="hidden">티클 검색하기</legend>
							<!-- 티클 타입 1 -->
							<select name="tikle_kind" title="티클 유형1 검색 셀렉트박스"
								class="j_src_tikle_kind_sel" id="tikleType1" data-val="1">
								<option value="">전체</option>
								<option value="1">카풀</option>
								<option value="3">KTX카풀</option>
								<option value="2">택시카풀</option>
								<option value="4">주차장</option>
								<option value="5">운전자</option>
							</select>
							<select name="tikle_type" title="티클 유형2(카풀, 택시카풀) 검색 셀렉트 박스"
								id="tikleType2" class="j_src_tikle_type_sel" data-val="">
								<option value="">전체</option>
							</select>
							<input type="hidden" name="tikle_pattern" value="1"
								class="hideClass">
							<!--카풀, ktx, 택시카풀, 주차장일때의 temp 파일 저장위치-->
							<div class="search_wrap">
								<div class="place_wrap j_src_key_box">
									<!-- 카풀, 택시카풀 출발지 도착지 -->
									<div class="inp_wrap start_place">
										<img src="./Bootstrap/images/2.jpg" title="출발지" alt="출발지"
											width="12px" height="20px"> <input type="search"
											name="src_key_1" value="" title="출발지를 입력해주세요" size="10"
											maxlength="100" placeholder="서울" class="inp_txt_comm">
									</div>
									<div class="inp_wrap arrival_place">
										<img src="./Bootstrap/images/3.jpg" title="도착지" alt="도착지"
											width="12px" height="20px"> <input type="search"
											name="src_key_2" value="" title="도착지를 입력해주세요" size="10"
											maxlength="100" placeholder="경기도" class="inp_txt_comm">
									</div>
								</div>
							</div>
							<!--검색버튼-->
							<input type="submit" name="" value="검색" title="검색"
								class="btn_type3 btn_search j_btn_search">
						</fieldset>
					</form>
				</article>
			</section>
			</div>
			<!-- temp -->
			<div class="box_temp hideClass">
			
				<!-- 카풀, 택시카풀 일때 -->
				<div class="place_wrap j_tmp_src_key_box_addr">
					<!-- 카풀, 택시카풀 출발지 도착지 -->
					<div class="inp_wrap start_place">
						<img src="./Bootstrap/images/2.jpg" title="출발지" alt="출발지"
							width="12px" height="20px"> <input type="search"
							name="src_key_1" value="" title="출발지를 입력해주세요" size="10"
							maxlength="100" placeholder="서울" class="inp_txt_comm">
					</div>
					<div class="inp_wrap arrival_place">
						<img src="./Bootstrap/images/3.jpg" title="도착지" alt="도착지"
							width="12px" height="20px"> <input type="search"
							name="src_key_2" value="" title="도착지를 입력해주세요" size="10"
							maxlength="100" placeholder="경기도" class="inp_txt_comm">
					</div>
				</div>		
			</div>
				
		<section class="section" id="content_wrapper">
			<div class="content_area">		
				<div class="content" id="tikleList">
					<table class="tiklelist_dvs">
						<caption class="hideClass">티클리스트 항목 구분 제목</caption>
						<tbody>
							<tr>
								<td class="list_dvs1">프로필</td>
								<td class="list_dvs2">출발</td>
								<td class="list_dvs2">도착</td>
								<td class="list_dvs3">유형</td>
								<td class="list_dvs3">자리/금액</td>
							</tr>
						</tbody>
					</table>
					<div class="box_tikle">
								<figure class="user_pic">
									<img src="./Bootstrap/images/3.jpg" title="박진념" alt="박진념" style="width: 60px; height: 60px;" class="picture">
									<figcaption class="name">박진념</figcaption>
								</figure>
								<div class="tikle_con">
									<div class="box_tikle_info1">
										<a href="Car1.kosmo">
										<div class="tikle_loc">
											<!-- 출발지 -->
											<div class="tikle_place tikle_start"><h1 class="hidden">출발지</h1>부산광역시 가야동 동의대역</div><!-- 
											--><span class="ico_dir_wrap"><i class="ico_dir"></i></span><!--
											도착지 
											--><div class="tikle_place tikle_arrival"><h1 class="hidden">도착지</h1>서울특별시 서교동 홍대입구</div>
										</div>
										<div class="tikle_date">2019.03.30 오전 9시 0분</div><span title="티클목적" class="tikle_purpose">출퇴근</span>									
									</div><!-- 
									유형 및 금액
								 --><div class="box_tikle_info2">
										<!-- 타세요 -->
										<div class="tikle_type">
											<span title="티클 유형" class="tikle_type1">정기 카풀</span>
											<span title="티클 유형2" class="tikle_type2">타세요</span>
										</div><!--
										--><div class="tikle_type">
											<span title="예약 가능 자리" class="tikle_seat"><strong>3</strong>자리</span> 
											<span title="1인 요금입니다.">10,000원<small>/인</small></span>
										</div>
									</div>
									</a>
								</div>
							</div>
							<div class="box_tikle">
								<figure class="user_pic">
									<img src="./Bootstrap/images/3.jpg" title="박진념" alt="박진념" style="width: 60px; height: 60px;" class="picture">
									<figcaption class="name">박진념</figcaption>
								</figure>
								<div class="tikle_con">
									<div class="box_tikle_info1">
										<a href="#">
										<div class="tikle_loc">
											<!-- 출발지 -->
											<div class="tikle_place tikle_start"><h1 class="hidden">출발지</h1>부산광역시 가야동 동의대역</div><!-- 
											--><span class="ico_dir_wrap"><i class="ico_dir"></i></span><!--
											도착지 
											--><div class="tikle_place tikle_arrival"><h1 class="hidden">도착지</h1>서울특별시 서교동 홍대입구</div>
										</div>
										<div class="tikle_date">2019.03.30 오전 9시 0분</div><span title="티클목적" class="tikle_purpose">출퇴근</span>									
									</div><!-- 
									유형 및 금액
								 --><div class="box_tikle_info2">
										<!-- 타세요 -->
										<div class="tikle_type">
											<span title="티클 유형" class="tikle_type1">정기 카풀</span>
											<span title="티클 유형2" class="tikle_type2">타세요</span>
										</div><!--
										--><div class="tikle_type">
											<span title="예약 가능 자리" class="tikle_seat"><strong>3</strong>자리</span> 
											<span title="1인 요금입니다.">10,000원<small>/인</small></span>
										</div>
									</div>
									</a>
								</div>
							</div>
							<div class="box_tikle">
								<figure class="user_pic">
									<img src="./Bootstrap/images/3.jpg" title="박진념" alt="박진념" style="width: 60px; height: 60px;" class="picture">
									<figcaption class="name">박진념</figcaption>
								</figure>
								<div class="tikle_con">
									<div class="box_tikle_info1">
										<a href="#">
										<div class="tikle_loc">
											<!-- 출발지 -->
											<div class="tikle_place tikle_start"><h1 class="hidden">출발지</h1>부산광역시 가야동 동의대역</div><!-- 
											--><span class="ico_dir_wrap"><i class="ico_dir"></i></span><!--
											도착지 
											--><div class="tikle_place tikle_arrival"><h1 class="hidden">도착지</h1>서울특별시 서교동 홍대입구</div>
										</div>
										<div class="tikle_date">2019.03.30 오전 9시 0분</div><span title="티클목적" class="tikle_purpose">출퇴근</span>									
									</div><!-- 
									유형 및 금액
								 --><div class="box_tikle_info2">
										<!-- 타세요 -->
										<div class="tikle_type">
											<span title="티클 유형" class="tikle_type1">정기 카풀</span>
											<span title="티클 유형2" class="tikle_type2">타세요</span>
										</div><!--
										--><div class="tikle_type">
											<span title="예약 가능 자리" class="tikle_seat"><strong>3</strong>자리</span> 
											<span title="1인 요금입니다.">10,000원<small>/인</small></span>
										</div>
									</div>
									</a>
								</div>
							</div>
							<div class="box_tikle">
								<figure class="user_pic">
									<img src="./Bootstrap/images/3.jpg" title="박진념" alt="박진념" style="width: 60px; height: 60px;" class="picture">
									<figcaption class="name">박진념</figcaption>
								</figure>
								<div class="tikle_con">
									<div class="box_tikle_info1">
										<a href="#">
										<div class="tikle_loc">
											<!-- 출발지 -->
											<div class="tikle_place tikle_start"><h1 class="hidden">출발지</h1>부산광역시 가야동 동의대역</div><!-- 
											--><span class="ico_dir_wrap"><i class="ico_dir"></i></span><!--
											도착지 
											--><div class="tikle_place tikle_arrival"><h1 class="hidden">도착지</h1>서울특별시 서교동 홍대입구</div>
										</div>
										<div class="tikle_date">2019.03.30 오전 9시 0분</div><span title="티클목적" class="tikle_purpose">출퇴근</span>									
									</div><!-- 
									유형 및 금액
								 --><div class="box_tikle_info2">
										<!-- 타세요 -->
										<div class="tikle_type">
											<span title="티클 유형" class="tikle_type1">정기 카풀</span>
											<span title="티클 유형2" class="tikle_type2">타세요</span>
										</div><!--
										--><div class="tikle_type">
											<span title="예약 가능 자리" class="tikle_seat"><strong>3</strong>자리</span> 
											<span title="1인 요금입니다.">10,000원<small>/인</small></span>
										</div>
									</div>
									</a>
								</div>
							</div>				
					<!-- 페이징 -->
					<div class="paging" style="margin-top: 50px;">
						<strong class="">1</strong> 
							<a href="#" class="">2</a>
							<a href="#" class="">3</a>
							<a href="#" class=" direction next">다음</a>
							<a href="#" class=" direction next">마지막</a>
					</div>
				</div>
				<aside id="aside">
					<article class="aside snb" id="sidebarTikleList">
						<form action="" method="">
							<fieldset>
								<legend class="hidden">간편 검색</legend>
								<!-- 타세요 태워주세요 -->
								<div class="box_search">
									<div>
										<input type="radio" name="carpool_seg" value="" class="hidden " id="getTotal"data-src="tikle_type" checked> 
										<label for="getTotal" class="bg_type j_box_search">전체<span class="side_arrow"></span></label>
											<input type="radio" name="carpool_seg" value="1"
											title="타세요 리스트 보기" class="hidden " id="getIn"
											data-src="tikle_type"> <label for="getIn"
											class="bg_type j_box_search">타세요<span
											class="side_arrow"></span></label>
											<input type="radio" name="carpool_seg" value="2"
											title="태워주세요 리스트 보기" class="hidden" id="getRide"
											data-src="tikle_type"> <label for="getRide"
											class="bg_type j_box_search">태워주세요<span
											class="side_arrow"></span></label>
									</div>
								</div>												
							</fieldset>
						</form>
					</article>
				</aside>
			</div>
		</section>
