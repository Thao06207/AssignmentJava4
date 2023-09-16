<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="en">
<head>
<title>Title</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
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
					           <c:url var="url" value="/video"/>
					        <form  action="${url}/index" method="post">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-3">
                                                 <div class="border p-3">
									 <img src="images/2.jpg"   alt="" width="200px" height="150px">
                                                </div> 
												</div>
                                           <div class="col-9">
										<div class="form-group">
											<label>Youtube ID</label> 
							    <input type="text" value="${form.id}" class="form-control" name="id"  placeholder="youtubeId">
										</div>
										<div class="form-group">
											<label>Video Title</label> 
											<input	type="text" value="${form.title}" class="form-control" name="title" placeholder="Video Title"> 
										</div>
										<div class="form-group">
											<label>Video Poster</label> 
											<input	type="text" value="${form.poster}" class="form-control" name="poster" placeholder="Video Poster"> 
										</div>
										<div class="form-group">
											<label>View Count</label> 
											<input type="text" value="${form.views}" class="form-control" name="views" >
											
										</div>
										<div class="form-group">
											<label>Status</label><br> 
											<input ${form.active?'checked':''} name="active" type="radio" value="true">Active
		                                    <input ${form.active?'checked':''} name="active" type="radio" value="false">Inactive
												
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col">
										<label for="description"> Description </label>
										<textarea name="description" value="${form.description}" id="description" cols="30"rows="4" class="form-control"></textarea>
									</div>
								</div>
							</div>
							<div class="card-footer text-muted">
								<button formaction="${url}/create" class="btn btn-primary">Create</button>
								<button formaction="${url}/update" class="btn btn-danger">Update</button>
								<button formaction="${url}/delete"  class="btn btn-warning">Delete</button>
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
									<td>Youtube ID</td>
									<td>Video title</td>
									<td>Video Poster</td>
									<td>View Count</td>
									<td>Video Description</td>
									<td>Status</td>
									<td>Edit</td>
									</tr>
									<tr>
									<td>${item.id}</td>
									<td>${item.title}</td>
									<td>${item.poster}</td>
									<td>${item.views}</td>
									<td>${item.description}</td>
									<td>${item.active?'Active':'InActive'}</td>
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