<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<!-- 카풀map시작-->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1fc37be4712f8b89b167cddbc490382f"></script>
	
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
		<a href="#content_wrapper" title="본문바로가기" target="_self"
			class="hidden">본문바로가기</a>
			<section id="box_header">
				<!-- 검색 -->
				<article class="header_bot hideClass1">
					<form id="form_src" name="form_src"
						action="http://www.tikle.co.kr/tikle/tiklelist" method="GET">
						<fieldset>
							<legend class="hidden">티클 검색하기</legend>
							<!-- 티클 타입 1 -->
							<div class="ddOutOfVision" id="tikleType1_msddHolder"
								style="height: 0px; overflow: hidden; position: absolute;">
								<select name="tikle_kind" title="티클 유형1 검색 셀렉트박스"
									class="j_src_tikle_kind_sel" id="tikleType1" data-val="1">
									<option value="" selected="selected">전체</option>
									<option value="1">카풀</option>
									<option value="3">KTX카풀</option>
									<option value="2">택시카풀</option>
									<option value="4">주차장</option>
									<option value="5">운전자</option>
								</select>
							</div>
							<div class="dd ddcommon borderRadius" id="tikleType1_msdd"
								tabindex="0" style="width: 120px;">
								<div class="ddTitle borderRadiusTp">
									<span class="divider"></span><span class="ddArrow arrowoff"></span><span
										class="ddTitleText " id="tikleType1_title"><span
										class="ddlabel">전체</span><span class="description"
										style="display: none;"></span></span>
								</div>
							</div>
							<!--티클 타입 2-->
							<div class="dd ddcommon borderRadius" id="tikleType2_msdd"
								tabindex="0" style="width: 120px;">
								<div class="ddTitle borderRadiusTp">
									<span class="divider"></span><span class="ddArrow arrowoff"></span><span
										class="ddTitleText " id="tikleType2_title"><span
										class="ddlabel">전체</span><span class="description"
										style="display: none;"></span></span>
								</div>							
							</div>
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
			<div class="content_area">
				<div class="content" id="tikleView">
					<header class="con_title">
						<h1 class="tikle_type1 car_pool">단기 카풀</h1>
						<h2 class="tikle_type2">태워주세요</h2>
					</header>
					<article class="tikle_view_wrap">
						<div class="box_info">
							<table>
								<caption class="hideClass">티클 세부정보</caption>
								<tbody>
									<tr class="tbl_place">
										<th scope="col" class="start_place"><span>출발</span><img
											src="./Bootstrap/images/2.jpg" title="출발지" alt="출발지"></th>
										<td>서울특별시 광진구 구의3동 강변역 근처</td>
										<th scope="col" class="arrival_pace"><span>도착</span><img
											src="./Bootstrap/images/3.jpg" title="도착지" alt="도착지">
										</th>
										<td>경기도 구리시 인창동 구리 롯데백화점 근처</td>
									</tr>
									<tr class="box_mileage">
										<th scope="col">
											<div>경유지</div>
										</th>
										<td colspan="3">
											<ul>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="col">목적</th>
										<td>카풀</td>
										<th scope="col">출발일시</th>
										<td>2013.05.23 오후 5시 30분</td>
									</tr>
									<tr>
										<th scope="col">카시트유무</th>
										<td>1 / 1</td>
										<th scope="col">비용(1인당)</th>
										<td>1,500원</td>
									</tr>

								</tbody>
							</table>
						</div>
						<!-- 지도 -->
						<div id="map" class="box_map">
							<script src="Bootstrap/js/CarpoolMap.js"></script>											
						</div>

						<!-- <div id="j_daum_map" class="box_map"
							style="position: relative; overflow: hidden; background: url(&quot;http://i1.daumcdn.net/dmaps/apis/loading_n.png&quot;);">
							<div
								style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;http://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;http://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;), default;">
								<div style="position: absolute;">
									<div style="position: absolute; z-index: 0;"></div>
									<div
										style="position: absolute; z-index: 1; left: 0px; top: 0px;">
										<img
											src="http://map3.daumcdn.net/map_2d/1902usc/L14/-1/-1.png"
											alt="" draggable="false"
											style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -19px; top: 374px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
											src="http://map0.daumcdn.net/map_2d/1902usc/L14/-1/0.png"
											alt="" draggable="false"
											style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 237px; top: 374px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
											src="http://map1.daumcdn.net/map_2d/1902usc/L14/-1/1.png"
											alt="" draggable="false"
											style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 493px; top: 374px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
											src="http://map2.daumcdn.net/map_2d/1902usc/L14/-1/2.png"
											alt="" draggable="false"
											style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 749px; top: 374px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
											src="http://s1.daumcdn.net/dmaps/apis/white.png" alt=""
											draggable="false"
											style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1005px; top: 374px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
											src="http://map3.daumcdn.net/map_2d/1902usc/L14/0/-1.png"
											alt="" draggable="false"
											style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -19px; top: 118px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
											src="http://map0.daumcdn.net/map_2d/1902usc/L14/0/0.png"
											alt="" draggable="false"
											style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 237px; top: 118px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
											src="http://map1.daumcdn.net/map_2d/1902usc/L14/0/1.png"
											alt="" draggable="false"
											style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 493px; top: 118px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
											src="http://map2.daumcdn.net/map_2d/1902usc/L14/0/2.png"
											alt="" draggable="false"
											style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 749px; top: 118px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
											src="http://s1.daumcdn.net/dmaps/apis/white.png" alt=""
											draggable="false"
											style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1005px; top: 118px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
											src="http://map3.daumcdn.net/map_2d/1902usc/L14/1/-1.png"
											alt="" draggable="false"
											style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -19px; top: -138px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
											src="http://map0.daumcdn.net/map_2d/1902usc/L14/1/0.png"
											alt="" draggable="false"
											style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 237px; top: -138px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
											src="http://map1.daumcdn.net/map_2d/1902usc/L14/1/1.png"
											alt="" draggable="false"
											style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 493px; top: -138px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
											src="http://map2.daumcdn.net/map_2d/1902usc/L14/1/2.png"
											alt="" draggable="false"
											style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 749px; top: -138px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img
											src="http://s1.daumcdn.net/dmaps/apis/white.png" alt=""
											draggable="false"
											style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1005px; top: -138px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
									</div>
									<div style="position: absolute; z-index: 1;"></div>
									<div
										style="width: 778px; height: 385px; position: absolute; z-index: 1;"></div>
									<div style="position: absolute; z-index: 1;">
										<svg version="1.1"
											style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; width: 3890px; height: 1925px; left: -1556px; top: -770px;"
											viewBox="0 0 3890 1925">
											<defs></defs></svg>
									</div>
									<div
										style="position: absolute; z-index: 1; width: 100%; height: 0px;"></div>
								</div>
							</div>
							<div
								style="position: absolute; cursor: default; z-index: 1; white-space: nowrap; font: 11px tahoma, sans-serif; color: rgb(85, 85, 85); left: 7px; bottom: 5px;">
								<a target="_blank" href="http://map.daum.net/"
									title="Daum 지도로 보시려면 클릭하세요."
									style="float: left; width: 38px; height: 17px; cursor: pointer;"><img
									src="http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/m_bi.png"
									alt="Daum 지도로 이동"
									style="width: 37px; height: 18px; border: none;"></a>

							</div>
							<div
								style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;">
								<div
									style="width: 22px; position: absolute; left: 753px; top: 37px;">
									<div draggable="false"
										style="float: left; cursor: pointer; width: 20px; height: 20px; user-select: none; -webkit-user-drag: none; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -264px 0px/515px 26px no-repeat;"></div>
									<div
										style="overflow: visible; cursor: pointer; position: relative; float: left; margin: 0px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -304px 0px/515px 26px repeat-y; transition: height 0.1s ease 0s; width: 20px; height: 126px;">
										<div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -364px 0px/515px 26px; left: 6px; top: 4px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -364px 0px/515px 26px; left: 6px; top: 13px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -364px 0px/515px 26px; left: 6px; top: 22px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -364px 0px/515px 26px; left: 6px; top: 31px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -364px 0px/515px 26px; left: 6px; top: 40px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -364px 0px/515px 26px; left: 6px; top: 49px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -364px 0px/515px 26px; left: 6px; top: 58px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -364px 0px/515px 26px; left: 6px; top: 67px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -364px 0px/515px 26px; left: 6px; top: 76px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -364px 0px/515px 26px; left: 6px; top: 85px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -364px 0px/515px 26px; left: 6px; top: 94px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -364px 0px/515px 26px; left: 6px; top: 103px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -364px 0px/515px 26px; left: 6px; top: 112px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -364px 0px/515px 26px; left: 6px; top: 121px;"></div>
										</div>
										<div
											style="position: absolute; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -324px 0px/515px 26px; overflow: hidden; margin-left: 1px; transition: height 0.1s ease 0s; width: 16px; height: 121px;">
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -358px 0px/515px 26px; left: 5px; top: 4px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -358px 0px/515px 26px; left: 5px; top: 13px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -358px 0px/515px 26px; left: 5px; top: 22px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -358px 0px/515px 26px; left: 5px; top: 31px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -358px 0px/515px 26px; left: 5px; top: 40px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -358px 0px/515px 26px; left: 5px; top: 49px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -358px 0px/515px 26px; left: 5px; top: 58px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -358px 0px/515px 26px; left: 5px; top: 67px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -358px 0px/515px 26px; left: 5px; top: 76px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -358px 0px/515px 26px; left: 5px; top: 85px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -358px 0px/515px 26px; left: 5px; top: 94px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -358px 0px/515px 26px; left: 5px; top: 103px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -358px 0px/515px 26px; left: 5px; top: 112px;"></div>
											<div
												style="position: absolute; width: 6px; height: 1px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -358px 0px/515px 26px; left: 5px; top: 121px;"></div>
										</div>
										<div
											style="cursor: row-resize; overflow: hidden; position: absolute; margin: -5px 0px 0px; width: 18px; height: 11px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -340px 0px/515px 26px; transition: top 0.1s ease 0s; left: 0px; top: 121px;"></div>
									</div>
									<div draggable="false"
										style="float: left; cursor: default; width: 20px; height: 20px; user-select: none; -webkit-user-drag: none; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -204px 0px/515px 26px no-repeat;"></div>
									<div
										style="display: none; position: absolute; margin: 20px 0px 0px -30px; background-size: 515px 26px; width: 30px; height: 126px;">
										<div
											style="position: absolute; width: 29px; height: 15px; margin: -6px 0px 0px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -370px 0px/515px 26px; left: 0px; top: 13px;"></div>
										<div
											style="position: absolute; width: 29px; height: 15px; margin: -6px 0px 0px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -399px 0px/515px 26px; left: 0px; top: 40px;"></div>
										<div
											style="position: absolute; width: 29px; height: 15px; margin: -6px 0px 0px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -428px 0px/515px 26px; left: 0px; top: 76px;"></div>
										<div
											style="position: absolute; width: 29px; height: 15px; margin: -6px 0px 0px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -457px 0px/515px 26px; left: 0px; top: 94px;"></div>
										<div
											style="position: absolute; width: 29px; height: 15px; margin: -6px 0px 0px; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -486px 0px/515px 26px; left: 0px; top: 112px;"></div>
									</div>
								</div>
								<div
									style="width: 90px; height: 31px; position: absolute; left: 685px; top: 3px;">
									<div draggable="false"
										style="float: left; cursor: default; width: 38px; height: 26px; user-select: none; -webkit-user-drag: none; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) 0px 0px/515px 26px no-repeat; position: absolute; left: 0px; top: 0px;"></div>
									<div draggable="false"
										style="float: left; cursor: pointer; width: 54px; height: 26px; user-select: none; -webkit-user-drag: none; background: url(&amp;quot;http://t1.daumcdn.net/localimg/localimages/07/mapjsapi/sprite3.png&amp;quot;) -38px 0px/515px 26px no-repeat; position: absolute; left: 38px; top: 0px;"></div>
								</div>
							</div>
						</div> -->
						<hr class="line_ltr">

						<div class="box_detail">
							<h2>추가내용</h2>
							<div class="txt_detail">잘 부탁드립니다~!</div>
						</div>
							
					</article>
					<!-- 버튼 -->
					<div class="btn_comm">
						<a href="#" title="목록보기" class="btn_type1 btn_list j_btn_list">목록보기</a>
					</div>
				</div>
				<aside id="aside">
					<!-- 다른사람 profile -->		
						<div class="snb_wrap">
							<div class="snb_top">
								<figure class="box_user">
									<img src="/profile/photo?no=2" title="" alt="" width="60px"
										height="60px" class="picture">
									<figcaption class="name">
										<!-- 사용자 이름 -->
										육아육아
									</figcaption>
								</figure>
							</div>
							<div class="snb_mid">
								<!-- 마감시 활성화 -->
								<div class="box_tikle_end">마감되었습니다.</div>
							</div>							
								</div>
							</div>
