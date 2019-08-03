<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!Doctype html> <!-- 문서 유형은 웹 브라우저에서 "이제부터 처리할 문서는 html 문서이고 어떤 유형을 사용했으니 그 버전에 맞는 방법으로 해석하라." 고 알려주는 것 -->

<html lang="ko"> 
<head>
    <meta charset="utf-8"> <!-- 인코딩 방식(한글과 영문뿐만 아니라 모든 언어를 표시할 수 있는 문자 세트) utf-8 --> 
    <title>awsp</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"> <!--css 부트스트램 -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> <!-- 폰트 부트스트램 -->

    <link rel="stylesheet" href="../resources/css/reset.css">    <!--웹에서 기본적으로 적용되는 css 리셋 -->
    <script src="../resources/js/main.js"></script>
    <link rel="stylesheet" href="../resources/css/style.css"> <!-- 스타일시트를 꾸며서 적용 -->

</head>


<body>

    <!-- //Home -->
    
<section id="login"> 
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="textWrap"> 
                    <h3>Login</h3>
                    
                    <form method="POST">
			<!-- 아이디 -->
			<div class="form-group">
				<label for="user_id">아이디</label>
					<input type="text" class="form-control" id="user_id" name="userid" placeholder="ID" required>
				<div class="check_font" id="id_check"></div>
			</div>
			<!-- 비밀번호 -->
			<div class="form-group">
				<label for="user_pw">비밀번호</label>
					<input type="password" class="form-control" id="user_pw" name="userpw" placeholder="PASSWORD" required>
				<div class="check_font" id="pw_check"></div>
			</div>

			
			<div class="reg_button">
				<a class="btn btn-danger px-3" href="${pageContext.request.contextPath}/">
					<i class="fa fa-rotate-right pr-2" aria-hidden="true"></i>취소하기
				</a>&emsp;&emsp;
				<button class="btn btn-primary px-3" type="submit">
					<i class="fa fa-heart pr-2" aria-hidden="true"></i>로그인
				</button>
				<div class="form-group">
					<a class="btn btn-deep-orange btn-block" href="${pageContext.request.contextPath}/board/register">회원가입</a>
				</div>
			</div>
		</form>
     					     
								
							</div>
							
                    </div>
                </div>
            </div>
        
    </section>

</body>
</html>