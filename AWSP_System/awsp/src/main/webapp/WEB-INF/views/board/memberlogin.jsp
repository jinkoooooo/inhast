<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!Doctype html> <!-- 문서 유형은 웹 브라우저에서 "이제부터 처리할 문서는 html 문서이고 어떤 유형을 사용했으니 그 버전에 맞는 방법으로 해석하라." 고 알려주는 것 -->

<html lang="ko"> 
<head>
    <meta charset="utf-8"> <!-- 인코딩 방식(한글과 영문뿐만 아니라 모든 언어를 표시할 수 있는 문자 세트) utf-8 --> 
    <title>저희는 바르셀로나를 좋아해요!</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"> <!--css 부트스트램 -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> <!-- 폰트 부트스트램 -->

    <link rel="stylesheet" href="css/reset.css">    <!--웹에서 기본적으로 적용되는 css 리셋 -->
    <script src="js/main.js"></script>
    <link rel="stylesheet" href="css/style.css"> <!-- 스타일시트를 꾸며서 적용 -->

</head>


<body>

    <!-- //Home -->

    <header id="gnb">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <ul class="mainMenu clearfix"> <!--clearfix 는 높이 값을 파악하지 못하게 되는 버그 발생을 막기 위해서 사용 -->
                        <li>
                            <a id="hom" onmouseover="onmouse('hom');this.style.textDecoration = 'underline'"
                            onmouseout="this.style.textDecoration = 'none'" onclick="fnMove('0')">Home</a> <!-- onclick 스크롤 이동할 함수 main.js 202~206 참고  -->
                        </li>
                        <li>
                            <a id="abt" onmouseover="onmouse('abt');this.style.textDecoration = 'underline'"
                            onmouseout="this.style.textDecoration = 'none'" onclick="fnMove('1')">About</a> 
                        </li>
                        <li>
                            <a id="sch" onmouseover="onmouse('sch');this.style.textDecoration = 'underline'"
                            onmouseout="this.style.textDecoration = 'none'" onclick="fnMove('2')">Schedule</a>
                        </li>
                        <li>
                            <a id="ply" onmouseover="onmouse('ply');this.style.textDecoration = 'underline'"
                            onmouseout="this.style.textDecoration = 'none'" onclick="fnMove('3')">Players</a>
                        </li>
                        <li>
                            <a id="etc" onmouseover="onmouse('etc');this.style.textDecoration = 'underline'"
                            onmouseout="this.style.textDecoration = 'none'" onclick="fnMove('4')">Makers</a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="snsMenu clearfix">
                        <li>
                            <a href="https://www.facebook.com/fcbarcelona">
                                <i class="fa fa-facebook" aria-hidden="true"></i> <!-- 폰트 부트스트램 스타일시트 라이브러리 적용 후 http://fontawesome.io/ 에서 아이콘 따옴 -->
                            </a>
                        </li>
                        <li>
                            <a href="https://twitter.com/FCBarcelona">
                                <i class="fa fa-twitter" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.instagram.com/fcbarcelona/">
                                <i class="fa fa-instagram" aria-hidden="true"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <!-- Home 부분 -->
    <section id="home"> 
        <div class="HomeWrap">
            <div class="logoWrap">
                <img src="img/logo.png" id="logo" alt="logo" onclick="locatelogo()" onmouseover="onmouse('logo')">
            </div>
            <div class="headTitle"> 
                <p class="star">
                    <i class="fa fa-star" aria-hidden="true"></i> <!--http://fontawesome.io/ 에서 아이콘 따옴 -->
                </p>
                <h1>FC Barcelona</h1>  <!-- h1 구글 웹 폰트 적용 -->
                <h2>Season 2017 - 2018 Fc Barcelona</h2> <!-- h2 구글 웹 폰트 적용 --> 
            </div>
        </div>
    </section>
    <!-- About 부분-->
    <section id="about">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="textWrap"> 
                        <h3>About</h3>
                        <div class="contentsWrap"> 
                            <p>풋볼 클럽 바르셀로나 (카탈루냐어: Futbol Club Barcelona, 축구단 바르셀로나)는 스페인 카탈루냐 지방의 바르셀로나를 연고지로 하는 세계 최초이자 세계 최대 규모로 협동조합 형태로 운영되는 축구 클럽이다. 홈 경기장은 캄 노우이며, 1899년 11월 29일에 창단되었다.</p>
                            <p>리저브 팀으로 FC 바르셀로나 B를 두고 있다. 유스 팀으로는 FC 바르셀로나 후베닐 A, FC 바르셀로나 후베닐 B, FC 바르셀로나 카다테, FC 바르셀로나 인판틸, FC 바르셀로나 알레빈, FC 바르셀로나 벤하민, 순으로 나뉘어 있다. 바르사의 유스 시스템인 라 마시아는 펩 과르디올라, 리오넬 메시, 안드레스 이니에스타, 세르히오 부스케츠, 제라르 피케, 조르디 알바, 카를레스 푸욜, 챠비 에르난데스, 빅토르 발데스, 페페 레이나, 세스크 파브레가스, 페드로 로드리게스, 티아고 알칸타라 등등 많은 축구 선수들을 배출하였다.</p>
                            <p>프리메라리가에서 레알 마드리드 CF 와 숙명의 라이벌이며 두 클럽 사이의 대결은 엘 클라시코라고 부른다. 팀 명을 줄여서 바르사(바르싸)(Barça)라고도 부르는데 발음할 때에 주의해야 한다. 'ç' 표기가 없는 언어에서는 모양이 유사한 알파벳 'c'로 'ç'를 대체하는 경우가 많아 'Barca'라고 표기되는 경우도 흔한데, 이것은 단순히 표기상의 난점으로 인해 일어나는 현상일 뿐 발음은 '바르카'가 아닌 '바르사(바르싸)' 로 한다.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- //Blank -->

    <div class="blank team"> 

    </div>

    <!-- //Schedule -->
    <section id="schedule">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3>Schedule</h3>
                </div>
            </div>
            <div id="times"> <!--main.js 참고 -->
                <div id="tname">
                    <font size="2" color="white">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Next match to be played in
                    </font>
                </div>
                <font size="5" color="#9C8ED5">
                    <span class="time" id="days"></span>
                    <span class="time" id="hour"></span>
                    <span class="time" id="min"></span>
                    <span class="time" id="sec"></span>
                </font>

                <pre><font size="2" color="white">    Days         hours         minutes         seconds</font></pre>

            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="match">
                        <div>
                            <div class="head">
                                <strong>La Liga</strong>
                                <span>23/12/2017 | 04:45 KOR</span>
                            </div>

                            <div class="body">
                                <div>
                                    <img src="img/realmadrid.png">
                                    <p>Real Madrid</p>
                                </div>
                                <div class="vs">
                                    <p>VS</p>
                                </div>
                                <div>
                                    <img src="img/bar.png">
                                    <p>FC Barcelona</p>
                                </div>
                            </div>

                            <div class="tail">
                                <div id="ms" onmouseover="redover()" onmouseout="redout()" onclick="locate()">
                                    Schedule for matches
                                </div>
                            </div>
                        </div>

                        <div>
                            <div class="head">
                                <strong>La Liga</strong>
                                <span>18/12/2017 | 04:45 KOR</span>
                            </div>

                            <div class="body">
                                <div>
                                    <img src="img/bar.png">
                                    <p>FC Barcelona</p>
                                </div>
                                <div class="vs">
                                    <p>4 - 0</p>
                                </div>
                                <div>
                                    <img src="img/deportivo.png">
                                    <p>Deportivo</p>
                                </div>
                            </div>

                            <div class="tail">
                                <div id="ms2" onmouseover="redover2()" onmouseout="redout2()" onclick="locate()">
                                    Schedule for matches
                                </div>
                            </div>
                        </div>

                        <div>
                            <div class="head">
                                <strong>La Liga</strong>
                                <span>11/12/2017 | 04:45 KOR</span>
                            </div>

                            <div class="body">
                                <div>
                                    <img src="img/villarreal.png">
                                    <p>Villarreal CF</p>
                                </div>
                                <div class="vs">
                                    <p>2 - 0</p>
                                </div>
                                <div>
                                    <img src="img/bar.png">
                                    <p>FC Barcelona</p>
                                </div>
                            </div>

                            <div class="tail">
                                <div id="ms3" onmouseover="redover3()" onmouseout="redout3()" onclick="locate()">
                                    Schedule for matches
                                </div>
                            </div>
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
    
    <section id="players"> 
        <div class="pop"> 
            <div class="popWrap"> 
                <div class="exit">X</div> 
                <div class="bg"> 
                    <span class="num">1</span> 
                    <span class="name">FromBottom</span> 
                    <span class="position">Striker</span>  
                </div>
                <ul class="clearfix neck"> <!--팝업창 목 부분  -->
                    <li>
                        <strong>place of birth</strong> 
                        <span class="textPla"></span> 
                    </li>
                    <li>
                        <strong>date of birth</strong> 
                        <span class="textDay"></span> 
                    </li>
                    <li>
                        <strong>weight</strong>
                        <span class="textWei"></span> 
                    </li>
                    <li>
                        <strong>height</strong>
                        <span class="textHei"></span> 
                    </li>
                    
                </ul>
                <div class="content">
                    <p>
                        <span></span>
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/B2BEIbfE69o" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen style="display:block;margin:30px auto 0;"></iframe>
                    </p>
                    <div class="readMore">Read More</div>
                </div>
            </div>
            

            

        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3>Players</h3>
                </div>
            </div>
            
                      
            <div class="row">

                <div class="col-md-3 eachPlayer"> 
                        <div class="imgWrap"> 
                            <img src="img/1.jpg" alt="player"> 
                        </div>
                        <div class="player-info"> 
                            <div class="num">1</div> 
                            <div class="text"> 
                                <span class="name">Ter Stegen</span>
                                <span class="position">GOALKEEPER</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 eachPlayer">
                        <div class="imgWrap">
                            <img src="img/2.jpg" alt="player">
                        </div>
                        <div class="player-info">
                            <div class="num">2</div>
                            <div class="text">
                                <span class="name">Nélson Semedo</span>
                                <span class="position">Defender</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 eachPlayer">
                        <div class="imgWrap">
                            <img src="img/3.jpg" alt="player">
                        </div>
                        <div class="player-info">
                            <div class="num">3</div>
                            <div class="text">
                                <span class="name">Piqué</span>
                                <span class="position">Defender</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 eachPlayer">
                        <div class="imgWrap">
                            <img src="img/4.jpg" alt="player">
                        </div>
                        <div class="player-info">
                            <div class="num">4</div>
                            <div class="text">
                                <span class="name">I. Rakitic</span>
                                <span class="position">Midfielder</span>
                            </div>
                        </div>
                    </div>
                <div class="col-md-3 eachPlayer">
                    <div class="imgWrap">
                        <img src="img/5.jpg" alt="player">
                    </div>
                    <div class="player-info">
                        <div class="num">5</div>
                        <div class="text">
                            <span class="name">Sergio Busquets</span>
                            <span class="position">MIDFIELDER</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 eachPlayer">
                    <div class="imgWrap">
                        <img src="img/6.jpg" alt="player">
                    </div>
                    <div class="player-info">
                        <div class="num">6</div>
                        <div class="text">
                            <span class="name">Denis Suárez</span>
                            <span class="position">MIDFIELDER</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 eachPlayer">
                    <div class="imgWrap">
                        <img src="img/7.jpg" alt="player">
                    </div>
                    <div class="player-info">
                        <div class="num">7</div>
                        <div class="text">
                            <span class="name">Arda</span>
                            <span class="position">MIDFIELDER</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 eachPlayer">
                    <div class="imgWrap">
                        <img src="img/8.jpg" alt="player">
                    </div>
                    <div class="player-info">
                        <div class="num">8</div>
                        <div class="text">
                            <span class="name">A. Iniesta</span>
                            <span class="position">MIDFIELDER</span>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 eachPlayer">
                    <div class="imgWrap">
                        <img src="img/9.jpg" alt="player">
                    </div>
                    <div class="player-info">
                        <div class="num">9</div>
                        <div class="text">
                            <span class="name">Luis Suárez</span>
                            <span class="position">FORWARD</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 eachPlayer">
                    <div class="imgWrap">
                        <img src="img/10.jpg" alt="player">
                    </div>
                    <div class="player-info">
                        <div class="num">10</div>
                        <div class="text">
                            <span class="name">Messi</span>
                            <span class="position">FORWARD</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 eachPlayer">
                    <div class="imgWrap">
                        <img src="img/11.jpg" alt="player">
                    </div>
                    <div class="player-info">
                        <div class="num">11</div>
                        <div class="text">
                            <span class="name">Dembélé</span>
                            <span class="position">FORWARD</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 eachPlayer">
                    <div class="imgWrap">
                        <img src="img/12.jpg" alt="player">
                    </div>
                    <div class="player-info">
                        <div class="num">12</div>
                        <div class="text">
                            <span class="name">Rafinha</span>
                            <span class="position">MIDFIELDER</span>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 eachPlayer">
                    <div class="imgWrap">
                        <img src="img/13.jpg" alt="player">
                    </div>
                    <div class="player-info">
                        <div class="num">13</div>
                        <div class="text">
                            <span class="name">Cillessen</span>
                            <span class="position">GOALKEEPER</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 eachPlayer">
                    <div class="imgWrap">
                        <img src="img/14.jpg" alt="player">
                    </div>
                    <div class="player-info">
                        <div class="num">14</div>
                        <div class="text">
                            <span class="name">Mascherano</span>
                            <span class="position">DEFENDER</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 eachPlayer">
                    <div class="imgWrap">
                        <img src="img/15.jpg" alt="player">
                    </div>
                    <div class="player-info">
                        <div class="num">15</div>
                        <div class="text">
                            <span class="name">Paulinho</span>
                            <span class="position">MIDFIELDER</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 eachPlayer">
                    <div class="imgWrap">
                        <img src="img/16.jpg" alt="player">
                    </div>
                    <div class="player-info">
                        <div class="num">16</div>
                        <div class="text">
                            <span class="name">Deulofeu</span>
                            <span class="position">FORWARD</span>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 eachPlayer">
                    <div class="imgWrap">
                        <img src="img/17.jpg" alt="player">
                    </div>
                    <div class="player-info">
                        <div class="num">17</div>
                        <div class="text">
                            <span class="name">Paco Alcácer</span>
                            <span class="position">FORWARD</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 eachPlayer">
                    <div class="imgWrap">
                        <img src="img/18.jpg" alt="player">
                    </div>
                    <div class="player-info">
                        <div class="num">18</div>
                        <div class="text">
                            <span class="name">Jordi Alba</span>
                            <span class="position">DEFENDER</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 eachPlayer">
                    <div class="imgWrap">
                        <img src="img/19.jpg" alt="player">
                    </div>
                    <div class="player-info">
                        <div class="num">19</div>
                        <div class="text">
                            <span class="name">Digne</span>
                            <span class="position">DEFENDER</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 eachPlayer">
                    <div class="imgWrap">
                        <img src="img/20.jpg" alt="player">
                    </div>
                    <div class="player-info">
                        <div class="num">20</div>
                        <div class="text">
                            <span class="name">S. Roberto</span>
                            <span class="position">MIDFIELDER</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 eachPlayer">
                    <div class="imgWrap">
                        <img src="img/21.jpg" alt="player">
                    </div>
                    <div class="player-info">
                        <div class="num">21</div>
                        <div class="text">
                            <span class="name">André Gomes</span>
                            <span class="position">MIDFIELDER</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 eachPlayer">
                    <div class="imgWrap">
                        <img src="img/22.jpg" alt="player">
                    </div>
                    <div class="player-info">
                        <div class="num">22</div>
                        <div class="text">
                            <span class="name">Aleix Vidal</span>
                            <span class="position">MIDFIELDER</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 eachPlayer">
                    <div class="imgWrap">
                        <img src="img/23.jpg" alt="player">
                    </div>
                    <div class="player-info">
                        <div class="num">23</div>
                        <div class="text">
                            <span class="name">Umtiti</span>
                            <span class="position">DEFENDER</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 eachPlayer">
                    <div class="imgWrap">
                        <img src="img/24.jpg" alt="player">
                    </div>
                    <div class="player-info">
                        <div class="num">25</div>
                        <div class="text">
                            <span class="name">Vermaelen</span>
                            <span class="position">DEFENDER</span>
                        </div>
                    </div>
                </div>
                
                
            </div><!-- End Row of player-->
            
    </section>
        <!-- maker  -->
    <section id="makers">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3><span>프로젝트</span>를 만든 사람들</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 eachMaker each01">
                    <div class="makerCircle"> 
                        <img id="i1" src="img/maker1.png" onmouseover="changeImg()" onmouseout="normalImg()" alt="makers">
                        <p>
                            <a href="https://www.facebook.com/mgjung1">
                                <i class="fa fa-facebook" aria-hidden="true"></i>
                            </a>
                            <a href="https://www.instagram.com/mingeun.jung/">
                                <i class="fa fa-instagram" aria-hidden="true"></i>
                            </a>
                        </p>
                    </div>
                    <div class="makerText">
                        <strong>정민근</strong>
                        <span>CEO &amp; Developer</span>
                    </div>
                </div>
                <div class="col-md-6 eachMaker each02">
                    <div class="makerCircle">
                        <img id="i2" src="img/maker2.png" onmouseover="changeImg2()" onmouseout="normalImg2()" alt="makers">
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
            <div class="row">
                <div class="col-md-12 eachMaker each03">
                    <div class="makerCircle">
                        <img id="i3" src="img/maker3.png" onmouseover="changeImg3()" onmouseout="normalImg3()" alt="makers">
                        <p>
                            <a href="https://www.facebook.com/profile.php?id=100003379737484">
                                <i class="fa fa-facebook" aria-hidden="true"></i>
                            </a>
                            <a href="https://www.instagram.com/yeegihun/">
                                <i class="fa fa-instagram" aria-hidden="true"></i>
                            </a>
                        </p>
                    </div>
                    <div class="makerText">
                        <strong>이기훈</strong>
                        <span>CEO &amp; Developer</span>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>