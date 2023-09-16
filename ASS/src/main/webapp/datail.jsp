<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
     <link rel="stylesheet" href="../fontawesome-free-6.0.0-web/css/all.css">
    

</head>
<body>
    <main class="container">      
		<div class="row"
			style="display: -ms-flexbox; display: flex; -ms-flex-wrap: wrap; flex-wrap: wrap; margin-right: -15px; margin-left: -15px;">
			<div class="col-7" style=" margin-left:-70px;">
				<div class="card" style="width:620px; height:600px;margin-top:15px;">
					<div class="card-body">
		      
						<div class="card-row">
							<iframe width="560px" height="315px"
								src="https://www.youtube.com/embed/${video.id}"
								title="YouTube video player" frameborder="0"
								allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
								allowfullscreen></iframe>
						</div>

						<div class="row p-2">
							<div class="card-title">
								<h4>${video.title}</h4>
							</div>
						</div>
						<div class="row p-2">
							<div class="card-title">
								<h4>${video.description}</h4>
							</div>
						</div>
					
					</div>
					<div class="card-footer text-right">
						<a href="" class="btn btn-success">LIKE</a> <a href=""
							class="btn btn-info">SHARE</a>
					</div>
				</div>
			</div>
			
			<div class="col-5" style="margin-left:50px;padding-left:55px">
			 <c:forEach var="v" items="${videos}">
			           <a href="datail?id=${v.id}">
				  <div class="row border mt-3 mb-3">
					<div class="col-4">
					 <img src="images/${v.poster}" alt="" width="100px" height="80px"> 
                      </div>
					<div class="col-8 border-left">${v.title}</div>	
				</div>
				</a>
			</c:forEach>
			</div>
			
		</div>
       
            
	</main>
         <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>