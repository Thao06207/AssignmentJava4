<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<%-- <style type="text/css"><%@include file="../webapp/css/item/item.css"%></style> --%>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="../fontawesome-free-6.0.0-web/css/all.css">
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css">
   	<style> <%@include file="css/item/item.css" %></style> 
  <style>
   .poly-prod {
    text-align: center;
    padding: 5px;
}
  .col-sm-4{
   float:left;
}  
   </style>

</head>

<body>

	 <!-- <main class="container">
		<div class="row">
			<div class="col-sm-12">  -->
               
                <c:forEach var="video" items="${videos}">
					<div class="col-sm-4 poly-prod">
						<div class="item">
							<div class="item-body">
								<img alt="" src="images/${video.poster}" width="350px" height="150px">
							</div>
							<div class="item-price">${video.title}</div>
							<div class="item-like">
								<a href="" class="btn btn-success">UNLIKE</a>
                                <a href="" class="btn btn-info">SHARE</a>
							</div>
						</div>
					</div>
		</c:forEach>
               
              
 
			<!-- 	</div>
			</div>

	</main>  -->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>