<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
       <link rel="stylesheet" href="../fontawesome-free-6.0.0-web/css/all.css">
	<style>
	
	 body {
        background-color:lavenderblush;
        margin: 0;
      }
	</style>
	
</head>
<body >
    <label>${message}</label> 
      <div class="col-sm-4 offset-sm-4" style="margin-top:20px;">
                    <span class="anchor"></span>
                    <div class="mb-5">

                    <!-- form card login with validation feedback -->
                    <div class="card" style="width:500px; height:400px; background-color:azure;" >
                        <div class="card-header">
                            <h3 class="mb-0 text-center">Login</h3>
                        </div>
                        <div class="card-body">
                            <form action="/ASS/login" class="form" method="post">
                 
							<div class="form-group">
                                    <label>Username</label>
                                    <input type="text" class="form-control" name="username" value="${username}" >
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" class="form-control" name="password" value="${password}">
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input name="remember" type="checkbox" class="form-check-input"> <span>Remember me</span>
                                    </label>
                                </div>
                                <button type="submit" class="btn btn-success btn-lg float-right" >Login</button>
                            </form>
                        </div>
                        </div>
                     
                        </div> 
                 </div>
              
     <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>            
</body>
</html>