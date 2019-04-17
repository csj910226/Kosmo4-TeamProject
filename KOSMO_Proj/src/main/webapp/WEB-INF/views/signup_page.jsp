<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script>
	////////////////////////
	// Email 선택 스크립트 시작 //
	///////////////////////
	$(function() {
		$('#select').change(function() {
			$('#textEmail').val($('#select').val());
			$('#textEmail').attr("disabled", true);
			if ($('#select').val() == 'empty') {
				$('#textEmail').attr("disabled", false);
				$('#textEmail').val("");
				$('#textEmail').focus();
			}
		})
		///////////////////////
		// Email 선택 스크립트 끝 //
		//////////////////////

		////////////////////
		// 제휴 선택 스크립트 시작 //
		////////////////////
		$('#dd1').hide();
		$('#checkbox1').click(function() {//카풀 제휴서비스 추가입력다이브
			if ($(this).prop('checked')) {
				$('#dd1').show();
			} else {
				$('#dd1').hide();
			}
		})
		////////////////////
		// 제휴 선택 스크립트 끝 //
		////////////////////

		////////////////////
		// 휴대폰 번호 유효성체크 //
		////////////////////
		function onlyNumber() {
			if ((event.keyCode < 48) || (event.keyCode > 57))
				event.returnValue = false;
		}

		function CheckForm() {
			if (document.getElementById("txtMobile1").value == "") {
				window.alert("휴대폰 번호를 선택하시오.");
				return false;
			}
			if (document.getElementById("txtMobile2").value.length != 4) {
				window.alert("가운데 번호는 4자리로 입력하세요");
			}
		}

		////////////////////
		// 휴대폰 번호 유효성체크 //
		////////////////////

	});
</script>
<style>
:root {
  --input-padding-x: 1.5rem;
  --input-padding-y: .75rem;
}

.site-section {
  background: #007bff;
  background: linear-gradient(to right, #0062E6, #33AEFF);
}

.card-signin {
  border: 0;
  border-radius: 1rem;
  box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
  overflow: hidden;
}

.card-signin .card-title {
  margin-bottom: 2rem;
  font-weight: 300;
  font-size: 1.5rem;
}

.card-signin .card-body {
  padding: 2rem;
}

.form-signin {
  width: 100%;
}

.form-signin .btn {
  font-size: 80%;
  border-radius: 5rem;
  letter-spacing: .1rem;
  font-weight: bold;
  padding: 1rem;
  transition: all 0.2s;
}

.form-label-group {
  position: relative;
  margin-bottom: 1rem;
}

.form-label-group input {
  height: auto;
  border-radius: 2rem;
}

.form-label-group>input,
.form-label-group>label {
  padding: var(--input-padding-y) var(--input-padding-x);
}

.form-label-group>label {
  position: absolute;
  top: 0;
  left: 0;
  display: block;
  width: 100%;
  margin-bottom: 0;
  /* Override default `<label>` margin */
  line-height: 1.5;
  color: #495057;
  border: 1px solid transparent;
  border-radius: .25rem;
  transition: all .1s ease-in-out;
}

</style>

<div class="site-section" style="padding: 2em;">
 
	<div class="container">

			<div class="col-lg-10 col-xl-9 mx-auto">
				<div class="card card-signin flex-row my-5">
					<div class="card-body">
						<h5 class="card-title text-center">회원가입</h5>
						<form class="form-signin"> 
 
							<div class="form-label-group input-group">
								<input type="text" id="inputUserame" class="form-control"
									placeholder="Username" required autofocus>
									<label for="inputUserame">아이디</label>
									<div class="input-group-append">
										<button class="btn btn-primary text-uppercase">중복</button>
									</div>
							</div>
								
 
							<div class="form-label-group">
								<input type="password" id="inputPassword" class="form-control"
									placeholder="Password" required> <label
									for="inputPassword">Password</label>
							</div>

							<div class="form-label-group">
								<input type="password" id="inputConfirmPassword"
									class="form-control" placeholder="Password" required> <label
									for="inputConfirmPassword">Confirm password</label>
							</div>
							
							<div class="form-label-group">
								<input type="email" id="inputEmail" class="form-control"
									placeholder="Email address" required> <label
									for="inputEmail">Email address</label>
							</div>
							<div class="form-label-group">
								<input type="text" id="tel" class="form-control"
									placeholder="tel" required> <label
									for="tel">Tel</label>
							</div>
							
							
							

							<button class="btn btn-lg btn-primary btn-block text-uppercase"
								type="submit">Register</button>
							<a class="d-block text-center mt-2 small" href="#">Sign In</a>
							<hr class="my-4">
							
						</form>
					</div>
				</div>
			</div>

		
	</div>



	
	<div class="container">
		<div id="wrap" class="memPage">
			<div id="container" class="grayBg hasBtn memberJoin" tabindex="0">
				<div class="pathDiv">
					<h2 class="sub-tit">회원가입</h2>
				</div>
				<div id="content">
					<form id="joinMbInfForm" name="joinMbInfForm" action="Signup.kosmo"
						method="post">
						<div class="joinDiv">
							<div class="perInfo">
								<p class="joinTit2">
									필수정보 입력&nbsp;&nbsp;<small><small style="color: gray;">가입하기
											위해 필수적으로 입력해야하는 정보칸 입니다.</small></small>
								</p>
								<div class="idInput">
									<div class="input-area type2">
										<input type="text" id="id" name="id" value="" class=""
											placeholder="아이디를 입력해주세요.">
									</div>
									<a href="#" class="confirmBt">중복확인</a>
								</div>
								<p class="rwTxt">
									<span>*</span>8~16자의 영문, 숫자만 입력해주세요.
								</p>
								<div class="passInput">
									<div class="input-area">
										<input type="password" id="pwd" name="pwd"
											placeholder="비밀번호를 입력해주세요.">
									</div>
									<div class="input-area">
										<input type="password" id="intgMbPwConfirm"
											placeholder="비밀번호를 확인을 입력해주세요.">
									</div>
								</div>
								<p class="rwTxt">
									<span>*</span>영문자, 숫자, 특수문자를 모두 포함하여 8~16자리로 입력해주세요.
								</p>

								<div class="mailInput">
									<span>이메일 입력 : </span>
									<div class="input-area type2" style="width: 120px">
										<input type="text" id="email" name="email" value=""
											placeholder="이메일 입력">
									</div>
									<span class="mailTxt">@</span>
									<div class="input-area type1" style="width: 180px">
										<input style="width: 180px" type="text" id="textEmail"
											name="textEmail" placeholder="이메일을 선택하세요."
											disabled="disabled">
									</div>
									<div class="select-area" id="selectemail">
										<select name="selectbox" id="select">
											<option value="" disabled selected>E-Mail 선택</option>
											<option value="naver.com" id="naver.com">naver.com</option>
											<option value="hanmail.net" id="hanmail.net">hanmail.net</option>
											<option value="gmail.com" id="gmail.com">gmail.com</option>
											<option value="nate.com" id="nate.com">nate.com</option>
											<option id="textEmail" value="empty">직접 입력하기</option>
										</select>
									</div>

								</div>
							</div>
							<div>
								휴대폰 번호 : <select id="phone1" name="phone1" style="width: 100px">
									<option value="">::선택::</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="019">019</option>
									<option value="010">010</option>
								</select> <span class="mailTxt">-</span> <input type="text" id="phone2"
									name="phone2" maxlength="4" style="width: 65px" /> <span
									class="mailTxt">-</span> <input type="text" id="phone3"
									name="phone3" maxlength="4" style="width: 65px" />
							</div>
							<p class="joinTit2">
								선택정보 입력&nbsp;&nbsp;<small><small style="color: gray;">선택적으로
										입력하는 정보란 입니다.</small></small>
							</p>
							<div class="addInput">
								<div class="input-area type2">
									<input type="text" id="postNo" name="postNo" value="00000"
										placeholder="우편번호" readonly="">
								</div>
								<a href="#" class="confirmBt addSrchBt">우편번호</a>
								<div class="input-area">
									<input type="text" id="bscAdr" name="bscAdr" value="11111"
										style="font-size: 11px; width: 100%;" placeholder="주소"
										readonly="">
								</div>
							</div>
							<div class="input-area type5">
								<input type="text" id="dtlAdr" name="dtlAddr" value=""
									placeholder="상세주소를 입력해주세요.">
							</div>


							제휴서비스 폼
							<p class="joinTit2">
								제휴 서비스&nbsp;&nbsp;<small><small style="color: gray;">카풀
										서비스에 동의하신다면 체크하세요</small></small>
							</p>

							<div class="promotion">
								<label>카풀 제휴 서비스 여부 <input id="checkbox1"
									type="checkbox" style="display: inline;" />
								</label>
								<div class="text" id="dd1">
									<div class="card text-white bg-success mb-3"
										style="outline: 1px black solid; margin-bottom: 10px;">
										<div class="card-header" style="text-align: center;">카풀
											관련 추가 입력칸입니다</div>
										<div class="card-body">
											<div class="carpoolSignin">
												<h2>운전경력?</h2>
												<label><input type="checkbox"
													style="display: inline;" id="partner_years">&nbsp;신입</label>
												<label><input type="checkbox"
													style="display: inline;" id="partner_years">&nbsp;6개월
													이내</label> <label><input type="checkbox"
													style="display: inline;" id="partner_years">&nbsp;1년~2년</label>
												<label><input type="checkbox"
													style="display: inline;" id="partner_years">&nbsp;2년~5년</label>
												<label><input type="checkbox"
													style="display: inline;" id="partner_years">&nbsp;10년이상</label>

												<h2>카시트?</h2>
												<label><input type="checkbox"
													style="display: inline;" id="partner_carseat">&nbsp;있</label>
												<label><input type="checkbox"
													style="display: inline;" id="partner_carseat">&nbsp;없</label>

												<h2>차종?</h2>
												<label><input type="checkbox"
													style="display: inline;" id="partner_car">&nbsp;소형차</label>
												<label><input type="checkbox"
													style="display: inline;" id="partner_car">&nbsp;중형차</label>
												<label><input type="checkbox"
													style="display: inline;" id="partner_car">&nbsp;대형차</label>

												<h2>추가할거 넣으시면 됩니다 하하</h2>
												<label><input type="checkbox"
													style="display: inline;">&nbsp;하하핳</label> <label><input
													type="checkbox" style="display: inline;">&nbsp;호호홓</label>
												<label><input type="checkbox"
													style="display: inline;">&nbsp;히히힣</label>
											</div>
										</div>
									</div>
								</div>

								<div class="btnBox">
									<a href="javascript:history.back()" class="grayBt"
										style="padding-left: 10px">취소</a>
									<Button type="submit">가입완료</Button>
								</div>
							</div>
						</div>

					</form>

				</div>
			</div>
		</div>
	</div>
	
	
	
	
</div>



