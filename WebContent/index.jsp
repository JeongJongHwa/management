<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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
					<br /> <label for="BUSI_NUM">사업자번호</label> <input type="text" name="BUSI_NUM" class="form-data in_s" maxlength="20" />
					<div></div>
					<label for="CUSTOM">거래처명 </label> <input type="text" name="CUSTOM" class="form-data in_s" maxlength="20" />
					<button type="button" class="btn btn-right pull-right btn_s">조회</button>
					<br />

				</div>
				<div class="row">
					<div style="border: 1px solid black;">
						<table class="table text-center table-bordered">
							<thead>
								<tr class="text-center">
									<th class="text-center">사업자 번호</th>
									<th class="text-center">거래처명</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>2</td>
									<td>3</td>
								</tr>
								<tr>
									<td>5</td>
									<td>6</td>
								</tr>
								<tr>
									<td>2</td>
									<td>3</td>
								</tr>
								<tr>
									<td>2</td>
									<td>3</td>
								</tr>
								<tr>
									<td>2</td>
									<td>3</td>
								</tr>
								<tr>
									<td>2</td>
									<td>3</td>
								</tr>
								<tr>
									<td>2</td>
									<td>3</td>
								</tr>
								<tr>
									<td>2</td>
									<td>3</td>
								</tr>
								<tr>
									<td>2</td>
									<td>3</td>
								</tr>
								<tr>
									<td>2</td>
									<td>3</td>
								</tr>
								<tr>
									<td>2</td>
									<td>3</td>
								</tr>
								<tr>
									<td>2</td>
									<td>3</td>
								</tr>
								<tr>
									<td>2</td>
									<td>3</td>
								</tr>
								<tr>
									<td>2</td>
									<td>3</td>
								</tr>
								<tr>
									<td>2</td>
									<td>3</td>
								</tr>
								<tr>
									<td>2</td>
									<td>3</td>
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
						<input type="text" name="BUSI_NUM" class="form-data in_s" maxlength="20" />
					</div>
					<div class="col-sm-2">
						<label for="SHORT">약칭</label>
					</div>
					<div class="col-sm-4">
						<input type="text" name="SHORT" class="form-data in_s" maxlength="20" /><br />
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="CUSTOM">거래처명</label>
					</div>
					<div class="col-sm-10">
						<input type="text" name="CUSTOM" class="form-data in_b" maxlength="20" /><br />
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="CEO">대표자</label>
					</div>
					<div class="col-sm-4">
						<input type="text" name="CEO" class="form-data in_s" maxlength="20" />
					</div>

					<div class="col-sm-2">
						<label for="CHARGE_PERSON">담당자</label>
					</div>
					<div class="col-sm-4">
						<input type="text" name="CHARGE_PERSON" class="form-data in_s" maxlength="20" /><br />
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="BUSI_CONDITION">업태</label>
					</div>
					<div class="col-sm-4">
						<input type="text" name="BUSI_CONDITION" class="form-data in_s" maxlength="20" />
					</div>
					<div class="col-sm-2">
						<label for="ITEM">종목</label>
					</div>
					<div class="col-sm-4">
						<input type="text" name="ITEM" class="form-data in_s" maxlength="20" />
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="POST_NUM">우편번호</label>
					</div>
					<div class="col-sm-4">
						<input type="text" name="POST_NUM" class="form-data in_s" maxlength="20" />
						<button type="button" class="btn btn-right pull-right btn_s">검색</button>
						<!-- 검색 클릭시 검색창 띄우서 데이터 넣는방식으로 .. -->
					</div>
					<div class="col-sm-2">
						<label for="ADDR1">주소1</label>
					</div>
					<div class="col-sm-4">
						<input type="text" name="ADDR1" class="form-data in_s" maxlength="20" />
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="ADDR2">주소2</label>
					</div>
					<div class="col-sm-10">
						<input type="text" name="ADDR2" class="form-data in_b" maxlength="20" /><br />
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="TEL">전화번호</label>
					</div>
					<div class="col-sm-4">
						<input type="text" name="TEL" class="form-data in_s" maxlength="20" />
					</div>
					<div class="col-sm-2">
						<label for="FAX">팩스번호</label>
					</div>
					<div class="col-sm-4">
						<input type="text" name="FAX" class="form-data in_s" maxlength="20" />
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="HOMEPAGE">홈페이지</label>
					</div>
					<div class="col-sm-10">
						<input type="text" name="HOMEPAGE" class="form-data in_b" maxlength="20" />
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="CO_YN">법인여부</label>
					</div>
					<div class="col-sm-4">
						<input type="radio" name="CO_YN"  maxlength="20" /> <label for="CO_YN">법인</label>
						<input type="radio" name="CO_YN"
							maxlength="20" /> <label for="CO_YN">개인</label>
					</div>
					<div class="col-sm-2">
						<label for="FOREIGN_YN">해외여부</label>
					</div>
					<div class="col-sm-4">
						<input type="radio" name="CO_YN" /> <label for="CO_YN">국내</label>
						<input type="radio" name="CO_YN" /> <label for="CO_YN">해외</label>
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="TAX_YN">과세구분</label>
					</div>
					<div class="col-sm-4">
						<select name="TAX_YN">
							<option>과세/면세</option>
							<option>비과세</option>
							</select>
					</div>
					<div class="col-sm-2">
						<label for="BUSI_NUM">국가</label>
					</div>
					<div class="col-sm-4">
						<input type="text" name="BUSI_NUM" class="form-data in_s1" /> <input type="text" name="BUSI_NUM" class="form-data in_s2"
							maxlength="20" />
						<button type="button" class="btn btn-right pull-right btn_s">검색</button>
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="SPECIAL_RELATION">특수관계자</label>
					</div>
					<div class="col-sm-4">
						<input type="checkbox" name="SPECIAL_RELATION" class="form-data in_s" maxlength="20" />
					</div>
					<div class="col-sm-2">
						<label for="TRADE_STOP">거래중지</label>
					</div>
					<div class="col-sm-4">
						<input type="checkbox" name="TRADE_STOP" class="form-data in_s" maxlength="20" />
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="CONTRACT_PERIOD_S">계약기간</label>
					</div>
					<div class="col-sm-10">
						<input type="text" name="BUSI_NUM" class="form-data in_s" maxlength="20" /> ~ <input type="text" name="BUSI_NUM" class="form-data in_s"
							maxlength="20" />
					</div>
				</div>
				<div class="row" style="padding: 1px;">
					<div class="col-sm-2">
						<label for="BUSI_NUM">등록정보</label>
					</div>
					<div class="col-sm-4">
						<input type="text" name="BUSI_NUM" class="form-data in_s1" maxlength="20" /> <input type="text" name="BUSI_NUM" class="form-data in_s2"
							maxlength="20" />
					</div>

					<div class="col-sm-2">
						<label for="BUSI_NUM">변경정보</label>
					</div>
					<div class="col-sm-4">
						<input type="text" name="BUSI_NUM" class="form-data in_s1" maxlength="20" /> <input type="text" name="BUSI_NUM" class="form-data in_s2"
							maxlength="20" />
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
	</div>
	</div>
</body>
</html>