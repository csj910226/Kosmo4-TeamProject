<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8" %>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

    <link rel="stylesheet" href="<c:url value='/Bootstrap/css/zInput/zInput_default_stylesheet.css'/>"> 
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
 	 <script src="Bootstrap/js/zInput/zInput.js"></script>
 	  

<style type="text/css">
.carpoolicon{color:#f68181;font-size:50px;}

.custom_Button{
width: 140px;
background-color:#f68181;
color:white;
border: none;
}
</style>


<div class="site-section" style="height: auto; padding: 2em; padding-left: 3em">
	<div class="container">
	
		<div class="row" style="padding-bottom: 10px">
			<h2>
				<i class="fas fa-car carpoolicon"></i>카풀 등록하기
			</h2>
		</div>
		<hr style="border: 5px solid #f68181;" />
		<div class="row" style="padding-top: 20px">
			<div class="col-md-3 order-md-2 mb 4">
				<img alt="지도이미지"
					src="Bootstrap/images/epl.png"
					style="width: 400px; height: 450px; margin-left: -150px; margin-right: auto;">
			</div>

			<div class="col-md-8 " style="padding-left: 3em">
				<div class="row col-md-12" style="margin-bottom: 50px">
					<label style="margin-top: 20px; margin-right: 20px">유형: </label> 
					<div id = "affected">					
						<input type="radio" name="set 2" title="타세요">
						<input type="radio" name="set 2" title="태워주세요">
					</div>
				
					<div class="row col-md-8" style="margin-bottom: 50px;margin-top:30px">
						<label style="margin-top: 9px; margin-right: 20px">목적: </label> 
						<select	class="form-control col-md-6" id="목적">
							<option>출근</option>
							<option>퇴근</option>
							<option>출퇴근</option>
						</select>
					</div>
					<div class="row" style="margin-bottom: 50px">
						<label style="margin-top: 9px; margin-right: 20px">출발지: </label>
						<input type="text" class="form-control col-md-9" placeholder="위치 입력해주세요" />
					</div>
					<div class="row" style="margin-bottom: 50px">
						<label style="margin-top: 9px; margin-right: 20px">도착지: </label>
						<input type="text" class="form-control col-md-9" placeholder="위치 입력해주세요" />
					</div>
					<div class="row" style="margin-bottom: 50px">
						<label style="margin-top: 9px; margin-right: 20px">경유지: </label>
						<input type="text" class="form-control col-md-9" placeholder="위치 입력해주세요" />
					</div>				
				</div>				
			</div>						
		</div>				
		<!-- 여기에 완료 취소 버튼 만들기 -->
		<div style=" text-align: center;">
			<button type="button" class="btn btn-primary custom_Button" style="margin-right: 25px" >취소</button>
			<button type="button" class="btn btn-primary custom_Button">확인</button>
		</div>
					
						
	</div>
</div>


<script>
$("#affected").zInput();
</script>
	  