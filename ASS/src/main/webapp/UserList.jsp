<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!doctype html>
<html lang="en">
  <head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="../fontawesome-free-6.0.0-web/css/all.css">
    
  </head>
  
  <body>
      <main class="container-fluid">
     
        <section class="row">
            <div class="col">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <a class="nav-link active" id="videoEditing-tab" data-toggle="tab" href="#tab1Id" role="tab"
                        aria-controls="videoEditing" aria-selected="true">Cật nhật</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" id="videoList-tab" data-toggle="tab" href="#tab2Id" role="tab"
                        aria-controls="videoList" aria-selected="false">Danh sách</a>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="tab1Id" role="tabpanel"
                    aria-labelledby="videoEditing-tab">
                    <div class="row">
                        <div class="col">
                            <label>${message}</label>
					             <c:url var="url" value="/user" />
					            <form action="${url}/index" method="post">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col">
                                               <div class="form-group">
											<label for="username">Username</label>
											<%--  <input type="text"class="form-control" value="${form.id}"  name="id" placeholder="Username">--%>
											<input type="text" value="${form.id}" name="id" placeholder="Username?" type="text" class="form-control"><br>

										</div>

										<div class="form-group">
											<label for="password">Password</label> 
											<input type="text" value="${form.password}" name="password" class="form-control" placeholder="Password?"><br>

											<%-- <input type="password" class="form-control" value="${form.password}" name="password"  placeholder="Password">--%>
										</div>
										<div class="form-group">
											<label>Role</label><br> 
											<input ${form.admin?'checked':''} name="admin" type="radio" value="true">Admin
		                                    <input ${form.admin?'checked':''} name="admin" type="radio" value="false">User
										</div>
									</div>
									<div class="col">
										<div class="form-group">
											<label for="fullname">Fullname</label>
											<%-- <input type="text"class="form-control" value="${form.fullname}" name="fullname"  placeholder="Fullname">--%>
										<input type="text" value="${form.fullname}" class="form-control"  name="fullname" placeholder="Fullname?"><br>
											
										</div>
										<div class="form-group">
											<label for="email">Email</label>
											<%-- <input type="text"	class="form-control" value="${form.email}" name="email" placeholder="Email">--%>
											<input type="text" value="${form.email}" class="form-control" name="email" placeholder="Email?"><br>
											
										</div>

									</div>
								</div>
							</div>
							<div class="card-footer text-muted">
								
								<button formaction="${url}/update" class="btn btn-primary">Update</button>
								<button formaction="${url}/delete" class="btn btn-primary">Delete</button>
								<a href="${url}/index">Reset</a>

							</div>
						</div>

                            </form>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="tab2Id" role="tabpanel" 
                    aria-labelledby="videoList-tab">
                    <table class="table table-bordered table hover "
								style="margin-bottom: 0">
								<c:forEach var="item" items="${items}">
									<tr>
										<td>ID</td>
										<td>Password</td>
										<td>Fullname</td>
										<td>Email</td>
										<td>Admin</td>
										<td>Edit</td>
									</tr>
									<tr>
										<td>${item.id}</td>
										<td>${item.password}</td>
										<td>${item.fullname}</td>
										<td>${item.email}</td>
										<td>${item.admin?'Admin':'User'}</td>
										<td><a href="${url}/edit/${item.id}">Edit</a></td>
									</tr>
								</c:forEach>

							</table>
                </div>
            </div>
        </div>
        </section>
          
    </main>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
  </body>
</html>