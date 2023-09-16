<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
	<!-- Bootstrap CSS -->
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
<body>
      <label>${message}</label> 
      <div class="col-sm-4 offset-sm-4" style="margin-top:20px;">
                    <span class="anchor" id="formRegister"></span>
                    <div class="mb-5">

                    <!-- form card register -->
                    <div class="card" style="width:500px; height:500px;background-color:azure;">
                        <div class="card-header">
                            <h3 class="mb-0 text-center">Sign Up</h3>
                        </div>
                        <div class="card-body">
                            <form action="/sign-up" class="form" method="POST">
                                <div class="form-group">
                                    <label>UserName</label>
                                    <input name="id" type="text" class="form-control">
                                </div>
                                 <div class="form-group">
                                    <label>Password</label>
                                    <input name="password"  type="password" class="form-control">
                                </div>
                                 <div class="form-group">
                                    <label>FullName</label>
                                    <input name="fullname"  type="text" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input name="email"  type="email" class="form-control">
                                </div>
                               
                                 <div class="form-group">
                                    <input name="admin" type="hidden"  value="false" class="form-control">   
                                </div>
                                
                                <div class="form-group">
                                    <button type="submit" class="btn btn-success btn-lg float-right">Register</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    </div>
                    </div>
</body>
</html>