<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="top.jsp" />

<link href="${webapproot}/css/list.css" rel="stylesheet" />
<!-- 메인 폼 (게시글 리스트 폼) -->
<main>

	<div class="list con">
		<div class="container">
			<table class="table table-stripped"
				style="text-align: center; boarder: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">중고거래
							게시판</th>
					</tr>
				</thead>
			</table>
		</div>

		<ul class="row" id="test">

			<c:set var="listSize" value="${boardList.size()}" />

			<!-- 게시판 정보를 담은 map타입 데이터 -->
			<c:forEach var="item" items="${boardList}" varStatus="stat">

				<!-- 게시글 세부정보 확인을 위해 게시글 제품번호 데이터 전송 및 폼이동 -->
				<li id="listid_ul" style="list-style: none;" class="cell" onclick="location.href='${webapproot}/boarddetailform.do?productnum=${item.productnum}'">
					
					<div class="img-box">
					
						<!-- 이미지 저장시 가장 첫번째로 등록된 이미지를 리스트에 출력 -->
						<img class=imgfile src="${webapproot}/img${item.imgsname}" alt="">
					</div>
					
					<p class="product-price">
						가격 : <fmt:formatNumber value="${item.productprice}" pattern="#,###" />원
					</p>
					
					<p class="product-name">
						${item.title}
					</p> 
					
					<c:set var="sysYear">
						<fmt:formatDate value="${item.wdate}" pattern="yyyy-MM-dd hh:mm:ss" />
					</c:set>
					
					<p class="product-date">
						<c:out value="${sysYear}" />
					</p>
				</li>

			</c:forEach>
			
		</ul>
	</div>
	<div>
		<a id="write" href="${webapproot}/boardwriteform.do">글 등록</a>
	</div>

</main>

<jsp:include page="bottom.jsp" />