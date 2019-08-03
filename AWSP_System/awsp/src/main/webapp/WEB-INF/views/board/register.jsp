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

    <section id="resister">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="textWrap"> 
                    <h3>회원가입</h3>
                    
                    
                    <form method="POST">
            <!-- 이름 -->
			<div class="form-group">
				<label for="user_name">이름</label>
					<input type="text" class="form-control" id="user_name" name="username" placeholder="Name" required>
				<div class="check_font" id="name_check"></div>
			</div>
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
			<!-- 비밀번호 재확인 -->
			<div class="form-group">
				<label for="user_pw2">비밀번호 확인</label>
					<input type="password" class="form-control" id="user_pw2" name="userpw2" placeholder="Confirm Password" required>
				<div class="check_font" id="pw2_check"></div>
			</div>
			<!-- 생년월일 -->
			<div class="form-group required">
				<label for="user_birth">생년월일</label>
					<input type="text" class="form-control" id="user_birth" name="userbirth" placeholder="ex) 19990415" required>
				<div class="check_font" id="birth_check"></div>
			</div>
			
			
					
					

			<!-- 휴대전화 -->
			<div class="form-group">
				<label for="user_phone">휴대전화 ('-' 없이 번호만 입력해주세요)</label>
				<input type="text" class="form-control" id="user_phone" name="userqz" placeholder="Phone Number" required>
				<div class="check_font" id="phone_check"></div>
			</div>
			
			
			<div class="reg_button">
				<a class="btn btn-danger px-3" href="${pageContext.request.contextPath}/board/register">
					<i class="fa fa-rotate-right pr-2" aria-hidden="true"></i>취소하기
				</a>&emsp;&emsp;
				<button class="btn btn-primary px-3" id="reg_submit">
					<i class="fa fa-heart pr-2" aria-hidden="true"></i>가입하기
				</button>
			</div>
		</form>
		
		<!-- 모달 추가 -->
           <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria=labelledby="myModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                 <div class="modal-content">
                    <div class="modal-header">
                       <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                       <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                    </div>
                    <div class="modal-body">처리가 완료되었습니다.</div>
                    <div class="modal-footer">
                       <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                       <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                 </div>
                 <!--  /.modal content -->
              </div>
              <!-- /.modal-dialog -->
           </div>
           <!-- /.modal -->

        
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <script type="text/javascript">
    //가입 하기 버튼 눌렀을때 유효성 검사
    $('#reg_submit').click(function(){
    	var validAll = true;
		for(var i = 0; i < inval_Arr.length; i++){
			
			if(inval_Arr[i] == false){
				validAll = false;
			}
		} 	
		if(validAll){ // 유효성 모두 통과
			window.alert('가입되었습니다.!');
			
		} else{
			window.alert('입력한 정보들을 다시 한번 확인해주세요 :)')
			
		}
    });



    
    var check_all = new Array(5).fill(false);
    //가입하기 버튼 유효성 검사를 위한 배열
    
    var empJ = /\s/g;
	//아이디 정규식
	var idJ = /^[a-z0-9]{4,12}$/;
	// 비밀번호 정규식
	var pwJ = /^(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]|.*[0-9]).{8,16}$/; 
	// 이름 정규식
	var nameJ = /^[가-힣]{2,6}$/;
	// 이메일 검사 정규식
	var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	// 휴대폰 번호 정규식
	var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
	
	// 이름에 특수문자 들어가지 않도록 설정
	$("#user_name").blur(function() {
		if (nameJ.test($(this).val())) {
				console.log(nameJ.test($(this).val()));
				$("#name_check").text('');
				check_all[0]=true;
		} else {
			$('#name_check').text('2~6자리 한글로만 입력하세요');
			$('#name_check').css('color', 'red');
		}
	});
	
	//아이디 유효성 검사
	$("#user_id").blur(function() {
		if (idJ.test($('#user_id').val())) {
				console.log('true');
				$("#id_check").text('');
				check_all[1]=true;
		} else {
			$('#id_check').text('아이디는 4~12자리 영문, 숫자 조합으로 해주세요!!');
			$('#id_check').css('color', 'red');
		}
	});
	
	//비밀번호 유효성 검사
	$("#user_pw").blur(function() {
		if (pwJ.test($('#user_pw').val())) {
				console.log('true');
				$("#pw_check").text('');
		} else {
			$('#pw_check').text('비밀번호는 8~16자리 영문, 숫자, 특수문자 조합으로 해주세요!!');
			$('#pw_check').css('color', 'red');
		}
	});
	
	//패스워드 일치 확인
	$("#user_pw2").blur(function() {
		if($('#user_pw').val() != $(this).val()){
			$('#pw2_check').text('비밀번호가 일치하지 않습니다.!!!!');
			$('#pw2_check').css('color', 'red');
		} else{
			$("#pw2_check").text('');
			check_all[2]=true;
		}
	});

	
	// 생일 유효성 검사
	var birthJ = false;
	
	// 생년월일	birthJ 유효성 검사
	$('#user_birth').blur(function(){
		var dateStr = $(this).val();		
	    var year = Number(dateStr.substr(0,4)); // 입력한 값의 0~4자리까지 (연)
	    var month = Number(dateStr.substr(4,2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
	    var day = Number(dateStr.substr(6,2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일)
	    var today = new Date(); // 날짜 변수 선언
	    var yearNow = today.getFullYear(); // 올해 연도 가져옴
		
	    if (dateStr.length <=8) {
			// 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다.
		    if (1900 > year || year > yearNow){
		    	
		    	$('#birth_check').text('생년월일을 확인해주세요 :)');
				$('#birth_check').css('color', 'red');
		    	
		    }else if (month < 1 || month > 12) {
		    		
		    	$('#birth_check').text('생년월일을 확인해주세요 :)');
				$('#birth_check').css('color', 'red'); 
		    
		    }else if (day < 1 || day > 31) {
		    	
		    	$('#birth_check').text('생년월일을 확인해주세요 :)');
				$('#birth_check').css('color', 'red'); 
		    	
		    }else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
		    	 
		    	$('#birth_check').text('생년월일을 확인해주세요 :)');
				$('#birth_check').css('color', 'red'); 
		    	 
		    }else if (month == 2) {
		    	 
		       	var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
		       	
		     	if (day>29 || (day==29 && !isleap)) {
		     		
		     		$('#birth_check').text('생년월일을 확인해주세요 :)');
					$('#birth_check').css('color', 'red'); 
		    	
				}else{
					$('#birth_check').text('');
					birthJ = true;
				}//end of if (day>29 || (day==29 && !isleap))
		     	
		    }else{
		    	
		    	$('#birth_check').text(''); 
				birthJ = true;
			}//end of if
			
			}else{
				//1.입력된 생년월일이 8자 초과할때 :  auth:false
				$('#birth_check').text('생년월일을 확인해주세요 :)');
				$('#birth_check').css('color', 'red');  
			}
	    
	 		check_all[3]=true;
		}); //End of method /*
		
		
		// 휴대전화
		$('#user_phone').blur(function(){
			if(phoneJ.test($(this).val())){
				console.log(nameJ.test($(this).val()));
				$("#phone_check").text('');
				check_all[4]=true;
			} else {
				$('#phone_check').text('휴대폰번호를 확인해주세요 :)');
				$('#phone_check').css('color', 'red');
			}
		});
    
    </script>
    
    <script type="text/javascript">
		$(document).ready(function(){
			var check = '<c:out value="${check}"/>';
			checkModal(check);
	
			function checkModal(check) {
				console.log("1 = 중복o / 0 = 중복x : "+ data);							
				
				if (parseInt(check) > 0) {
						$(".modal-body").html("게시글 "+parseInt(result) +" 번이 등록되었습니다.");
						// 1 : 아이디가 중복되는 문구
						$("#id_check").text("사용중인 아이디입니다 :p");
						$("#id_check").css("color", "red");
						$("#reg_submit").attr("disabled", true);
					} else {
						
						if(idJ.test(user_id)){
							// 0 : 아이디 길이 / 문자열 검사
							$("#id_check").text("");
							$("#reg_submit").attr("disabled", false);
				
						} else if(user_id == ""){
							
							$('#id_check').text('아이디를 입력해주세요 :)');
							$('#id_check').css('color', 'red');
							$("#reg_submit").attr("disabled", true);				
							
						} else {
							
							$('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다 :) :)");
							$('#id_check').css('color', 'red');
							$("#reg_submit").attr("disabled", true);
						}
					}
				$("#myModal").modal("show");
				}
		});	
	</script>

</html>


<%@include file="../includes/footer.jsp"%>