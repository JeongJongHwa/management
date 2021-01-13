<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function postNumFind() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('POST_NUM').value = data.zonecode;
           
        }
    }).open();
}
</script>


<script>
$(document).ready(function(){
	
	var upDown = {
			darkUp:"&#128077;&#127999;",
			Up:"&#128077;&#127995;",
			darkDown:"&#128078;&#127999;",
			Down:"&#128078;&#127995;"
	} ;
	
	$('button[btn5]').on('click',function(e){
		
		$('#table').html("<thead><tr class='text-center'><th class='text-center'>사업자 번호</th><th class='text-center'>거래처명</th></tr></thead><tbody><tr></tr></tbody>");
		
		var param = {
			BUSI_NUM:$('#BUSI_NUM_LT').val(),	
			CUSTOM:$('#CUSTOM_LT').val(),
			TYPE:''
		};
		
		if( ! param.BUSI_NUM && ! param.CUSTOM ){
			alert( "사업자번호 혹은 거래처명을 입력해주세요" );
			return 0;
		}
		
		$.ajax({
			type:'post',
			url:"MainSearchServlet",
			data:JSON.stringify(param),
			dataType:'json',
			contentType: "application/json; charset=utf-8",
			success:function(data){
				
				var results = data;
	            var str = "";
	            $.each(results , function(i){
	                str += "<tr class='abab' style='cursor: pointer' rn="+results[i].BUSI_NUM+" ><td>" + results[i].BUSI_NUM +
	                						'</td><td>' + results[i].CUSTOM + '</td>';
	                str += '</tr>';
	           });
	           $('#table').append(str); 
				
			},
			error:function(request, status, error){
				 var msg = "ERROR : " + request.status + "<br>"
			      msg +=  + "내용 : " + request.responseText + "<br>" + error;
			}
		});
	});
	
	$(document).on('click','.abab',function(e){
		console.log( $(this).attr('rn') );
		
		var param = {
				BUSI_NUM:$(this).attr('rn'),	
		};
		
		if( ! BUSI_NUM ){
			alert("올바르지 않은 방식입니다.");
		}
		
		$.ajax({
			type:'post',
			url:"MainRightSearchServlet",
			data:JSON.stringify(param),
			dataType:'json',
			contentType: "application/json; charset=utf-8",
			success:function(data){
				
				console.log(data);
				
				console.log( data['CUSTOM'] );
				console.log( data['CUSTOM'] );
				
				console.log( data['ACCOUNT']);
				
				return 0;
				
				var results = data;
	            var str = "";
	            $.each(results , function(i){
	                str += "<tr class='abab' style='cursor: pointer' rn="+results[i].BUSI_NUM+" ><td>" + results[i].BUSI_NUM +
	                						'</td><td>' + results[i].CUSTOM + '</td>';
	                str += '</tr>';
	           });
	           $('#table').append(str); 
				
			},
			error:function(request, status, error){
				 var msg = "ERROR : " + request.status + "<br>"
			      msg +=  + "내용 : " + request.responseText + "<br>" + error;
			}
		});
		
		
		
	});
	
	
});

function rightInfoGet(BUSI_NUM){
	console.log(BUSI_NUM);
}

</script>


<style>
.in_s1 {
	width: 45px;
	height: 25px;
	font-size: 12px;
}
.in_s2 {
	width: 90px;
	height: 25px;
	font-size: 12px;
}

.in_s {
	width: 145px;
	height: 25px;
	font-size: 12px;
}

.in_b {
	width: 290px;
	height: 25px;
	font-size: 12px;
}

.btn_s {
	width: 40px;
	height: 25px;
	padding: 0;
}
</style>
<title>거래처 관리</title>
</head>
<body>
	<div class="navbar">
		<div class="container">
			<ul class="nav navbar-nav">
				<li class="active"><a class="navbar-brand" href="#">거래처 관리</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a>조회</a></li>
				<li><a>저장</a></li>
				<li><a>삭제</a></li>
			</ul>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-sm-3 pull-left" style="border: 1px solid black;">
				<div class="row">
					<br /> <label for="BUSI_NUM_LT">사업자번호</label> 
					<input type="text" id="BUSI_NUM_LT" name="BUSI_NUM" class="form-data in_s" maxlength="20" />
					<div></div>
					<label for="CUSTOM_LT">거래처명 </label> 
					<input type="text" id="CUSTOM_LT" name="CUSTOM" class="form-data in_s" maxlength="20" />
					<button type="button" class="btn btn-right pull-right btn_s" btn5>조회</button>
					<br />

				</div>
				<div class="row">
					<div style="border: 1px solid black;">
						<table id="table" class="table text-center table-bordered table-hover">
							<thead>
								<tr class="text-center">
									<th class="text-center">사업자 번호</th>
									<th class="text-center">거래처명</th>
								</tr>
							</thead>
							<tbody>
								<tr>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>





			<div class="col-sm-9" style="border: 1px solid black;">
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="BUSI_NUM">사업자번호</label>
					</div>
					<div class="col-sm-4">
						<input type="text" id="BUSI_NUM" name="BUSI_NUM" class="form-data in_s" maxlength="20" />
					</div>
					<div class="col-sm-2">
						<label for="SHORT">약칭</label>
					</div>
					<div class="col-sm-4">
						<input type="text" id="SHORT" name="SHORT" class="form-data in_s" maxlength="20" /><br />
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="CUSTOM">거래처명</label>
					</div>
					<div class="col-sm-10">
						<input type="text" id="CUSTOM" name="CUSTOM" class="form-data in_b" maxlength="10" /><br />
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="CEO">대표자</label>
					</div>
					<div class="col-sm-4">
						<input type="text" id="CEO" name="CEO" class="form-data in_s" maxlength="10" />
					</div>

					<div class="col-sm-2">
						<label for="CHARGE_PERSON">담당자</label>
					</div>
					<div class="col-sm-4">
						<input type="text" id="CHARGE_PERSON" name="CHARGE_PERSON" class="form-data in_s" maxlength="10" /><br />
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="BUSI_CONDITION">업태</label>
					</div>
					<div class="col-sm-4">
						<input type="text" id="BUSI_CONDITION" name="BUSI_CONDITION" class="form-data in_s" maxlength="10" />
					</div>
					<div class="col-sm-2">
						<label for="ITEM">종목</label>
					</div>
					<div class="col-sm-4">
						<input type="text" id="ITEM" name="ITEM" class="form-data in_s" maxlength="10" />
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="POST_NUM">우편번호</label>
					</div>
					<div class="col-sm-4">
						<input type="text" id="POST_NUM" name="POST_NUM" class="form-data in_s" maxlength="10" />
						<button type="button" onclick="postNumFind()" class="btn btn-right pull-right btn_s">검색</button>
						<!-- 검색 클릭시 검색창 띄우서 데이터 넣는방식으로 .. -->
					</div>
					<div class="col-sm-2">
						<label for="ADDR1">주소1</label>
					</div>
					<div class="col-sm-4">
						<input type="text" id="ADDR1" name="ADDR1" class="form-data in_s" maxlength="80" />
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="ADDR2">주소2</label>
					</div>
					<div class="col-sm-10">
						<input type="text" id="ADDR2" name="ADDR2" class="form-data in_b" maxlength="80" /><br />
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="TEL">전화번호</label>
					</div>
					<div class="col-sm-4">
						<input type="text" id="TEL" name="TEL" class="form-data in_s" maxlength="10" />
					</div>
					<div class="col-sm-2">
						<label for="FAX">팩스번호</label>
					</div>
					<div class="col-sm-4">
						<input type="text" id="FAX" name="FAX" class="form-data in_s" maxlength="10" />
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="HOMEPAGE">홈페이지</label>
					</div>
					<div class="col-sm-10">
						<input type="text" id="HOMEPAGE" name="HOMEPAGE" class="form-data in_b" maxlength="20" />
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="CO_YN">법인여부</label>
					</div>
					<div class="col-sm-4">
						<input type="radio"  name="CO_YN" value="0" /> <label for="CO_YN">법인</label>
						<input type="radio" name="CO_YN" value="1" checked="checked" /> <label for="CO_YN">개인</label>
					</div>
					<div class="col-sm-2">
						<label for="FOREIGN_YN">해외여부</label>
					</div>
					<div class="col-sm-4">
						<input type="radio" name="FOREIGN_YN" value="0" checked="checked" /> <label for="FOREIGN_YN">국내</label>
						<input type="radio" name="FOREIGN_YN" value="1"  /> <label for="FOREIGN_YN">해외</label>
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="TAX_YN">과세구분</label>
					</div>
					<div class="col-sm-4">
						<select name="TAX_YN">
							<option value="0">과세/면세</option>
							<option value="1">비과세</option>
							</select>
					</div>
					<div class="col-sm-2">
						<label for="BUSI_NUM">국가</label>
					</div>
					<div class="col-sm-4">
						<input type="text" id="BUSI_NUM" name="BUSI_NUM" class="form-data in_s1" /> <input type="text" name="BUSI_NUM" class="form-data in_s2"
							maxlength="20" />
						<button type="button" class="btn btn-right pull-right btn_s">검색</button>
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="SPECIAL_RELATION">특수관계자</label>
					</div>
					<div class="col-sm-4">
						<input type="checkbox" id="SPECIAL_RELATION" name="SPECIAL_RELATION" class="form-data in_s" />
					</div>
					<div class="col-sm-2">
						<label for="TRADE_STOP">거래중지</label>
					</div>
					<div class="col-sm-4">
						<input type="checkbox" id="TRADE_STOP" name="TRADE_STOP" class="form-data in_s" maxlength="20" />
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="CONTRACT_PERIOD_S">계약기간</label>
					</div>
					<div class="col-sm-10">
						<input type="date" id="BUSI_NUM" name="BUSI_NUM" class="form-data in_s" /> ~ <input type="date" name="BUSI_NUM" class="form-data in_s"
							/>
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="BUSI_NUM">등록정보</label>
					</div>
					<div class="col-sm-4">
						<input type="text" name="BUSI_NUM" class="form-data in_s1" maxlength="10" />
						<input type="date" name="BUSI_NUM" class="form-data in_s2" />
					</div>

					<div class="col-sm-2">
						<label for="BUSI_NUM">변경정보</label>
					</div>
					<div class="col-sm-4">
						<input type="text" name="BUSI_NUM" class="form-data in_s1" maxlength="10" />
						<input type="date" name="BUSI_NUM" class="form-data in_s2" maxlength="10" />
					</div>
				</div>
				<div class="col-sm-12">(거래처 계좌정보)</div>

				<table class="table text-center table-bordered">
					<thead>
						<tr class="text-center">
							<th class="text-center">사무소</th>
							<th class="text-center">은행</th>
							<th class="text-center">계좌번호</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>2</td>
							<td>3</td>
						</tr>
						<tr>
							<td>4</td>
							<td>5</td>
							<td>6</td>
						</tr>
					</tbody>
				</table>
			</div>


		</div>

	</div>
</body>
</html>