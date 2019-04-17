<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<script>
/* 	$(function(){
		$("#btnLogin").onclick=function(){
			alert($("#loginid"));
			alert($("#loginpwd"));
		if($("#loginid").val()==""){
			alert("아이디를 입력하세요");
		}
		else($("#loginpwd").val==""){
			alert("비밀번호를 입력하세요");
		}
		})
	});
	 */
	var emptylogin = function(){
		 if($("#loginid").val()==""){
				alert("아이디를 입력하세요");
			}
		 else if($("#loginpwd").val()==""){
				alert("비밀번호를 입력하세요");
				$("#loginid").val($("#loginid").val());
			}
	}
	
</script>




<div class="site-section" style="height: auto; padding: 2em;">
	<div class="container">
		<div id="content">
			<form id="loginForm" name="loginForm"
				action="<c:url value='/Login.kosmo'/>" method="post">
				<div class="joinDiv loginPage">
					<div style="width: 300px; margin: 0 auto;">
						<img alt="드릴 말이 있습니다" src="Bootstrap/images/sumnail1.png"
							style="width: 300px; height: auto; margin-left: auto; margin-right: auto;">
					</div>
					<!-- 2018-06-26 클래스 수정 -->
					<p class="joinTit loginTit">
						첫번째 할말<br> 두번째 드릴 말이 있습니다<span>로그인을 위해 아이디와 비밀번호를
							입력해주세요</span>
					</p>
					<!-- 2018-06-27 텍스트 수정 -->
					<div class="loginDiv">
						<div class="input-area"
							style="border: 1px solid rgb(225, 225, 225);">
							<input type="text" id="loginId" name="loginId" value=""
								placeholder="아이디를 입력해주세요">
						</div>
						<div class="input-area">
							<input type="password" id="loginPwd" name="loginPwd" value=""
								placeholder="비밀번호를 입력해주세요" autocomplete="off">
						</div>
						<div class="check">
							<label for="idSave">아이디 저장&nbsp;&nbsp;</label><input
								type="checkbox" id="idSave" style="display: inline">
						</div>
						<div class="btnBox">
							<button class="yellowBt" id="btnLogin" style="width: 100%;"
								onclick="emptylogin();">로그인</button>
						</div>

						<div class="findArea">
							<a href="#">아이디 찾기</a> <a href="#">비밀번호 찾기</a>
							<!-- 2018-06-26 텍스트 수정 -->
							<a href="Sign_in_Two.jsp">회원가입</a>
						</div>
						<a id="kakao-login-btn">버튼버튼!!</a>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>


<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('c697b4f59516842004ed550968ca1155');  //여기서 아까 발급받은 키 중 javascript키를 사용해준다.
    // 카카오 로그인 버튼을 생성합니다.
    Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success: function(authObj) {
        alert(JSON.stringify(authObj));
      },
      fail: function(err) {
         alert(JSON.stringify(err));
      }
    });
  //]]>
  
  
    Kakao.Auth.createLoginButton({
    	   container: '#kakao-login-btn',
    	   success: function(authObj) {
    	     Kakao.API.request({
    	       url: '/v1/user/me',
    	       success: function(res) {
    	             alert(JSON.stringify(res)); //<---- kakao.api.request 에서 불러온 결과값 json형태로 출력
    	             alert(JSON.stringify(authObj)); //<----Kakao.Auth.createLoginButton에서 불러온 결과값 json형태로 출력
    	             console.log(res.id);//<---- 콘솔 로그에 id 정보 출력(id는 res안에 있기 때문에  res.id 로 불러온다)
    	             console.log(res.kaccount_email);//<---- 콘솔 로그에 email 정보 출력 (어딨는지 알겠죠?)
    	             console.log(res.properties['nickname']);//<---- 콘솔 로그에 닉네임 출력(properties에 있는 nickname 접근 
    	         // res.properties.nickname으로도 접근 가능 )
    	             console.log(authObj.access_token);//<---- 콘솔 로그에 토큰값 출력
    	           }
    	         })
    	       },

    	       fail: function(error) {
    	         alert(JSON.stringify(error));
    	       }
    	     });

    	//]]>

  
  
</script>
		

