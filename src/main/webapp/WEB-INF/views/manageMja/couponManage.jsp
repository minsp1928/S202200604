<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="mja.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/mja/couponManage.css" rel="stylesheet" type="text/css">
</head>
<body>
<jsp:include page="/WEB-INF/views/base/header.jsp" flush="true"/>
<div class="container">
	<div class="row">
		<div class="col-lg-2">
   			<a href="adminMain" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
     				<svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
     					<span class="fs-4">Admin</span>
   			</a>
   			<hr>
   			<ul class="nav nav-pills flex-column mb-auto">
		      <li class="nav-item">
		        <a href="sellManage?month=0&year=0" class="nav-link link-dark">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#home"/></svg>
		          	판매관리
		        </a>
		      </li>
		      <li>
		        <a href="memberManage" class="nav-link link-dark">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#speedometer2"/></svg>
		          	회원관리
		        </a>
		      </li>
		      <li>
		        <a href="noticeManage" class="nav-link link-dark">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#table"/></svg>
		         	공  지
		        </a>
		      </li>
		      <li>
		        <a href="couponManage" class="nav-link link-dark">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#grid"/></svg>
		          	쿠  폰
		        </a>
		      </li>
		      <li>
		        <a href="bannerManage" class="nav-link link-dark">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#people-circle"/></svg>
		         	배  너
		        </a>
		      </li>
		      <li>
		        <a href="faqManage" class="nav-link link-dark">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#people-circle"/></svg>
		         	1:1문의
		        </a>
		      </li>
		      <li>
		        <a href="#" class="nav-link link-dark">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#people-circle"/></svg>
		         	채  팅
		        </a>
		      </li>
		    </ul>	 
		</div>
		<div class="col-10 col-lg-8 offset-lg-1" id="one">	
			<div>
				<h1>쿠폰 목록</h1>
					<table class="table table-hover" id="couponTbl">
						<tr><th>번호</th><th>유형</th><th>쿠폰이름</th><th>시작일</th><th>만료일</th></tr>
		 					<c:forEach var="coupons" items="${coupons }">
		 				<tr>
				 		    <td>${coupons.cp_num}</td>
				 		    <c:if test= "${coupons.cp_category == 1}"><td>배송비</td></c:if>
				 			<c:if test= "${coupons.cp_category == 2}"><td>금액할인</td></c:if>
				 		 	<td>${coupons.cp_name}</td>
				 		 	<td>${coupons.st_date}</td>
				 		 	<td>${coupons.end_date }</td>
		 				</tr>
		 				</c:forEach>
					</table>
			</div>
		<p>
		<div>
			<h2>쿠폰 발행</h2>
				<form action="createCoupon">
					<table class="table" id="two">
						<tr>
							<th>쿠폰명</th>
								<td colspan="3"><input type="text"	name="cp_name" required="required"></td>
				 			<td>		
						</tr>
						<tr><th>카테고리</th>
								<td><select name="cp_category">
										<option value="1">배송비</option>
										<option value="2">금액할인</option>
									</select>
								</td>						
							<th>할인액</th>
								<td><input type="text" name="cp_price"></td>
						</tr>
						<tr><th>유효기간</th>
							<td><input type="date" name="st_date" required pattern="\d{4}-\d{2}-\d{2}"></td>
								<td>~</td>
							<td><input type="date" name="end_date" required pattern="\d{4}-\d{2}-\d{2}"></td>
						</tr>
						<tr><td colspan="4"><input type="submit" value="발행"></td></tr>
					</table>
				</form>
			</div>	
		</div>
	</div>
</div>
<jsp:include page="/WEB-INF/views/base/footer.jsp" flush="true"/>
</body>
</html>