<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

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
        <nav class="row">
            <nav class="navbar navbar-expand-sm navbar-light bg-light col ">
                <a class="navbar-brand" href="#">Administration</a>
                <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse"
                    data-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavId">
                    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                        <li class="nav-item active">
                            <a class="nav-link" href="#"> <i class="fa fa-home" aria-hidden="true"></i> Home <span
                                    class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"> <i class="fa fa-info" aria-hidden="true"></i> Videos</a>
                        </li>
                        <div class="nav-item">
                            <a href="" class="nav-link"><i class="fa fa-id-card" aria-hidden="true"></i>
                                Users</a>
                        </div>
                        <div class="nav-item">
                            <a href="" class="nav-link"> <i class="fa fa-comments" aria-hidden="true"></i>
                                Reports</a>
                        </div>
                    </ul>
                </div>
            </nav>
        </nav>
        <section class="row">
            <div class="col">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <a class="nav-link active" id="videoEditing-tab" data-toggle="tab" href="#videoEditing"
                            role="tab" aria-controls="videoEditing" aria-selected="true">Favorites</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link" id="videoList-tab" data-toggle="tab" href="#videoList" role="tab"
                            aria-controls="videoList" aria-selected="false"> Favorites User </a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link" id="ShareFriends-tab" data-toggle="tab" href="#ShareFriends" role="tab"
                            aria-controls="ShareFriends" aria-selected="false">Share Friends</a>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="videoEditing" role="tabpanel"
                        aria-labelledby="videoEditing-tab">
                        <div class="row">
                            <div class="col">
                                <table class="table table-bordered mt-3">
                                    <tr>
                                        <td>Video Title</td>
                                        <td>Favorites Count</td>
                                        <td>Lasted Date</td>
                                        <td>Oldest Date</td>
                                    </tr>
                                    <tr>
                                        <td>Java Progaming</td>
                                        <td>102</td>
                                        <td>17/3/2022</td>
                                        <td>17/3/2022</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="videoList" role="tabpanel" aria-labelledby="videoList-tab">
                        <form action="" method="get">
                            <div class="row mt-3">
                                <div class="col">
                                    <div class="form-inline">
                                        <div class="form-group"><label for=""> Video Title  <select name="" id=""
                                                class="form-control ml-3">
                                                <option value="">Java</option>
                                                </select>
                                            </label>
                                            <button class="btn btn-info ml-2">Report</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col mt-3">
                                    <table class="table table-bordered">
                                        <tr>
                                            <td>Username</td>
                                            <td>Fullname</td>
                                            <td>Email</td>
                                            <td>Favorite</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="tab-pane fade" id="ShareFriends" role="tabpanel" aria-labelledby="ShareFriends-tab">
                        <form action="" method="get">
                            <div class="row mt-3">
                                <div class="col">
                                    <div class="form-inline">
                                        <div class="form-group ml-3"><label for=""> Video Title <select name="" id=""
                                                class="form-control">
                                                <option value="">Java</option>
                                                </select>
                                            </label>
                                            <button class="btn btn-info ml-2">Report</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col mt-3">
                                    <table class="table table-bordered">
                                        <tr>
                                            <td>Sender Name</td>
                                            <td>Sender Email</td>
                                            <td>Receiver Email</td>
                                            <td>Sent Date</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <footer class="row"></footer>
    </main>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
  </body>
</html>