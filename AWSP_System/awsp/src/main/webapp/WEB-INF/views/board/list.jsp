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
                            onmouseout="this.style.textDecoration = 'none'" onclick="fnMove('0')">Home</a> <!-- onclick 스크롤 이동할 함수 main.js 202~206 참고  -->
                        </li>
                        <li>
                            <a id="abt" onmouseover="onmouse('abt');this.style.textDecoration = 'underline'"
                            onmouseout="this.style.textDecoration = 'none'" onclick="fnMove('1')">Service</a> 
                        </li>
                        <li>
                            <a id="sch" onmouseover="onmouse('sch');this.style.textDecoration = 'underline'"
                            onmouseout="this.style.textDecoration = 'none'" onclick="fnMove('2')">Download</a> 
                        </li>
                        <li>
                            <a id="ply" onmouseover="onmouse('ply');this.style.textDecoration = 'underline'"
                            onmouseout="this.style.textDecoration = 'none'" onclick="logoutBtn()">Loout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <!-- Home 부분 -->
    
    
    <section id="home"> 
        <div class="HomeWrap">
            <div class="headTitle"> 
                <p class="star">
                    <i class="fa fa-star" aria-hidden="true"></i> <!--http://fontawesome.io/ 에서 아이콘 따옴 -->
                </p>
                <h1>AWSP(All Wep Site Password)</h1>  <!-- h1 구글 웹 폰트 적용 -->
                <button type="button" class="btn btn-danger btn-lg" style="font-size:5em;" onclick="TestBtn()">AWSP 체험하기</button>
            </div>
        </div>
    </section>
    
    
    <!-- service 부분-->
    <section id="service">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="textWrap"> 
                        <h3>Service</h3>
                        <div class="contentsWrap"> 
                        <h3 class="stress" id="TABLE_OF_CONTENT1" style="-webkit-tap-highlight-color: rgba(0,0,0,0)">기본 개념</h3>
                        <p>네트워크에 참여하는 모든 사용자가 관리 대상이 되는&nbsp;모든 데이터를 분산하여 저장하는 데이터 분산처리기술을 말한다.
					 거래 정보가 담긴 원장을 거래 주체나 특정 기관에서 보유하는 것이 아니라 네트워크 참여자 모두가 나누어 가지는 기술이라는 점에서 '분산원장기술(DLC)' 또는 '공공거래장부'라고도 한다.
					  블록체인은 거래 내용이 담긴 블록(Block)을 사슬처럼 연결(chain)한 것이라 하여 붙여진 명칭이다.</p>



				




<h3 class="stress" id="TABLE_OF_CONTENT1" style="-webkit-tap-highlight-color: rgba(0,0,0,0)">개념과 원리</h3>
<p class="txt" style="-webkit-tap-highlight-color: rgba(0,0,0,0)"></p>
<p class="txt" style="-webkit-tap-highlight-color: rgba(0,0,0,0)">
	블록체인은 금융기관에서 모든 거래를 담보하고 관리하는 기존의 금융 시스템에서 벗어나 <a href="/entry.nhn?docId=1213240&amp;ref=y"
	 onclick="clickcr(this, 'bdk.creference', '', '', event);">P2P</a>(<span data-type="ore" data-lang="en">Peer</span>
	  <span data-type="ore" data-lang="en">to</span> <span data-type="ore" data-lang="en">Peer</span>；개인 대 개인)
	   거래를 지향하는, 탈(<span class="u_word_dic" data-hook="tip" data-type="arken" data-lang="hj">脫</span>)중앙화를 핵심 개념으로 한다.
	    P2P란 <a href="/entry.nhn?docId=1180913&amp;ref=y" onclick="clickcr(this, 'bdk.creference', '', '', event);">
	    서버</a>나 클라이언트 없이 개인 컴퓨터 사이를 연결하는 통신망을 말하며, 연결된 각각의 컴퓨터가 서버이자 클라이언트 역할을 하며 정보를 공유하는 방식이다.<br>
	    <br>기존 금융 시스템에서는 금융회사들이 중앙 서버에 거래 기록을 보관해 온 반면, P2P 방식을 기반으로 하는 블록체인에서는 거래 정보를 블록에 담아 차례대로 연결하고 이를 모든 참여자가 공유한다.
	    <br><br><img src="https://dbscthumb-phinf.pstatic.net/2765_000_19/20180228190338123_7VNYRPCF5.gif/1334259_0.gif?type=m1500&amp;wm=N"
	     data-font-image="false" data-image-id="doopedia_linkable_data_db^CP00029159$1334259_0" width="690" height="370" 
	     origin_src="https://dbscthumb-phinf.pstatic.net/2765_000_19/20180228190338123_7VNYRPCF5.gif/1334259_0.gif?type=m4500_4500_fst&amp;wm=N" 
	     origin_width="690" origin_height="370" source="" source_mobile="" hastitle="N" alt="블록체인 본문 이미지 1">
	     <br><br>거래 과정은 다음과 같이 이루어진다. ① A가 B에게 송금 희망 등의 거래 요청을 한다. ② 해당 거래 정보가 담긴 블록이 생성된다.
	      ③ 블록이 네트워크상의 모든 참여자에게 전송되면,&nbsp;참여자들은 거래 정보의 유효성을 상호 검증한다. ④ 참여자 과반수의 데이터와 일치하는 거래 내역은 정상 장부로 확인하는 방식으로 검증이 완료된 블록은 이전 블록에 연결되고,
	       그 사본이 만들어져 각 사용자의 컴퓨터에 분산 저장된다. ⑤ A가 B에게 송금하여 거래가 완료된다.<br><br>
	       <img src="https://dbscthumb-phinf.pstatic.net/2765_000_19/20180228190556323_ARWD6FS7E.gif/1334259_1.gif?type=m1500&amp;wm=N"
	        data-font-image="false" data-image-id="doopedia_linkable_data_db^CP00029159$1334259_1" width="690" height="270"
	         origin_src="https://dbscthumb-phinf.pstatic.net/2765_000_19/20180228190556323_ARWD6FS7E.gif/1334259_1.gif?type=m4500_4500_fst&amp;wm=N"
	          origin_width="690" origin_height="270" source="" source_mobile="" hastitle="N" alt="블록체인 본문 이미지 2">
	          <br><br>이렇게 하여 거래할 때마다 거래 정보가 담긴 블록이 생성되어 계속 연결되면서 모든 참여자의 컴퓨터에 분산 저장되는데, 이를 
	          <a href="/entry.nhn?docId=1167761&amp;ref=y" onclick="clickcr(this, 'bdk.creference', '', '', event);">
	          해킹</a>하여 임의로 수정하거나 위조 또는 변조하려면 전체 참여자의 과반수 이상의 거래 정보를 동시에 수정하여야 하기 때문에 사실상 불가능하다. 
	          따라서 접근을 차단함으로써 거래 정보를 보호·관리하는 기존의 금융 시스템과는 전혀 달리, 블록체인에서는 모든 거래 정보를 누구나 열람할 수 있도록 공개한 상태에서 은행 같은 공신력
	           있는 제3자의 보증 없이 당사자 간에 안전하게 거래가 이루어진다.
</p>


			</div>    
                        </div>
                    </div>
                </div>
            </div>
    </section>

<!-- //Blank -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="textWrap"> 
                        <div class="contentsWrap"> 
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- //Blank -->
    <div class="blank team">

    </div>


    <!-- download 부분 -->
    <section id="download">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="textWrap"> 
                    	<h3>Download</h3>
                        <div class="contentsWrap"> 
                        <h3>십자인대 파열로 인해</h3>
                        <h3>시간이 부족하여</h3>
                        <h3>어플은 구현하지 못하였습니다.</h3>
                        <h3>추후 구현하도록 하겠습니다....</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- //Blank -->
    <div class="blank team">

    </div>
    
    
    
    
    
    
    <!-- //Players Infomation -->
    
    
        <!-- maker  -->
    <section id="makers">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3><span>프로젝트</span>를 만든 사람</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 eachMaker each03">
                    <div class="makerCircle">
                        <img id="i2" src="../resources/img/maker2.png" onmouseover="changeImg2()" onmouseout="normalImg2()" alt="makers">
                        <p>
                            <a href="https://www.facebook.com/jink.J">
                                <i class="fa fa-facebook" aria-hidden="true"></i>
                            </a>
                            <a href="https://www.instagram.com/wls4210/">
                                <i class="fa fa-instagram" aria-hidden="true"></i>
                            </a>
                        </p>
                    </div>
                    <div class="makerText">
                        <strong>정진구</strong>
                        <span>CEO &amp; Developer</span>
                    </div>
                </div>
            </div>
        </div>
    </section> 
    
</body>
</html>