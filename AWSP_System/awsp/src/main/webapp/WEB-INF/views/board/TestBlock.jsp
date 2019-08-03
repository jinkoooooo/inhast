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

    <header id="gnb">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="mainMenu clearfix"> <!--clearfix 는 높이 값을 파악하지 못하게 되는 버그 발생을 막기 위해서 사용 -->
                	    
             		   <li>
                            <img src="../resources/img/logo.PNG" id="logo" alt="logo" onclick="locatelogo()" onmouseover="onmouse('logo')">
                        </li>
                        <li>
                            <a id="hom" onmouseover="onmouse('hom');this.style.textDecoration = 'underline'"
                            onmouseout="this.style.textDecoration = 'none'" onclick="fnMove('0')">KeyMaker</a> <!-- onclick 스크롤 이동할 함수 main.js 202~206 참고  -->
                        </li>
                        <li>
                            <a id="abt" onmouseover="onmouse('abt');this.style.textDecoration = 'underline'"
                            onmouseout="this.style.textDecoration = 'none'" onclick="fnMove('1')">Encrypt</a> 
                        </li>
                        <li>
                            <a id="sch" onmouseover="onmouse('sch');this.style.textDecoration = 'underline'"
                            onmouseout="this.style.textDecoration = 'none'" onclick="fnMove('2')">Decrypt</a> 
                        </li>
                        <li>
                            <a id="ply" onmouseover="onmouse('ply');this.style.textDecoration = 'underline'"
                            onmouseout="this.style.textDecoration = 'none'" onclick="locatelogo()">Return</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    

        <!-- Home 부분 -->
    
    
    <section id="home"> 
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="textWrap"> 
                        <h3>KeyMaker</h3>
                        <div class="contentsWrap">
    
		<form role="form" method="get">
          
        <div class="form-group">	
			
    		<div>
            <button type="submit" class="btn btn-danger">키생성하기</button>
            </div>
            <h2 style=" color: #FF0000; ">공개 키</h2>
  			<input id="public_k" name='public_k' class="form-control"
			    value='<c:out value="${public_k }"/>' readonly="readonly">
			<h2 style=" color: #FF0000; ">개인 키</h2>
  			<input id="private_k" name='private_k' class="form-control"
			    value='<c:out value="${private_k }"/>' readonly="readonly">
		</div>


        </form>
    </div>
    </div>
    </div>
    </div>
    </div>
    </section>
    
    
    
    
    
    
    
    <!-- Encrypt 부분 -->
    
    <section id="service">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="textWrap"> 
                        <h3>Encrypt</h3>
                        <div class="contentsWrap">
    
		<form role="form" method="post">
          
        <div class="form-group">
          <h3 style=" color: #FF0000; ">암호화 체험</h3>
            <input type="text" class="form-control" name="public_k" placeholder="공개키 입력" required>
			<input type="text" class="form-control" name="de_text" placeholder="암호화 할 자료" required>
			
			
    		<div>
            <button type="submit" class="btn btn-danger">암호화하기</button>
            </div>

  			<input id="en_text" name='en_text' class="form-control"
			    value='<c:out value="${en_text }"/>' readonly="readonly">
		</div>


        </form>
    </div>
    </div>
    </div>
    </div>
    </div>
    </section>
    
        <!-- //Blank -->
    <div class="blank team">

    </div>
    
    
    <!-- decrypt 부분 -->
    <section id="download">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="textWrap"> 
                        <h3>Decrypt</h3>
                        <div class="contentsWrap">
    
		<form role="form" method="post">
          
        <div class="form-group">
          <h3 style=" color: #FF0000; ">복호화 체험</h3>
            <input type="text" class="form-control" name="private_k" placeholder="개인키 입력" required>
			<input type="text" class="form-control" name="en_text" placeholder="복호화 할 자료" required>
			
			
    		<div>
            <button type="submit" class="btn btn-danger">복호화하기</button>
            </div>

  			<input id="en_text" name='en_text' class="form-control"
			    value='<c:out value="${de_text }"/>' readonly="readonly">
		</div>


        </form>
    </div>
    </div>
    </div>
    </div>
    </div>
    </section>

</body>
</html>