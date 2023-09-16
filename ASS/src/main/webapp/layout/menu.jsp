<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<style>

.bg-light {
    background-color: peachpuff!important;
    border-color: peachpuff!important;
  }
</style> 

<nav class="row">

	<c:if test="${!sessionScope.user.admin}">
		
		<nav class=" col navbar navbar-expand-sm navbar-light bg-light">
			<a class="navbar-brand" href="IndexServlet"
				style="color: #8B0000; font-size: 40px;" target="page">ONLINE ENTERTAINMENT</a>
			<div class="collapse navbar-collapse" id="collapsibleNavId">
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
					<li class="nav-item"><a class="nav-link" href="favorites"
						style="color: #0000FF;" target="page">Favorites</a>
					</li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="dropdownId"
						data-toggle="dropdown" style="color: #0000FF;" target="page">My Account</a>
						<div class="dropdown-menu" aria-labelledby="dropdownId">
							<a class="dropdown-item" href="login" target="page">Login</a>
							<a class="dropdown-item" href="sign-up" target="page">Register</a>
							<a class="dropdown-item" href="login" target="page">Logoff</a>
							<a class="dropdown-item" href="editprofile" target="page">Editprofile</a>
						</div>
						</li>
					<c:if test="${sessionScope.user != null}">
						<li class="nav-item">
						<a class="nav-link" href="" style="color: #0000FF;">WellCome ${sessionScope.user.fullname}</a></li>
						<li class="nav-item">
						<a class="nav-link" href="login" style="color: #0000FF;">Logoff</a></li>
					</c:if>
					<c:if test="${sessionScope.user == null}">
						<li><a href="login">Login</a></li>
					</c:if>
					
				</ul>
			</div>
		</nav>
	</c:if>

	<c:if test="${sessionScope.user.admin}">
		<nav class=" col navbar navbar-expand-sm navbar-light bg-light"
			style="background-color: #FFFACD; border-color: #FFFACD;">
			<a class="navbar-brand" href="IndexServlet" target="page"
				style="color: #8B0000; font-size: 40px;">Administration TOOL</a>
			<div class="collapse navbar-collapse" id="collapsibleNavId">
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">					
					<li class="nav-item"><a class="nav-link" target="page" href="UserList.jsp"
						style="color: #0000FF;" target="page">Users</a></li>
					<li class="nav-item"><a class="nav-link" href="VideoList.jsp"
						style="color: #0000FF;" target="page">Videos</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="thongke.jsp"
						style="color: #0000FF;" target="page">Reports</a>
					</li>
					<c:if test="${sessionScope.user != null}">
						<li class="nav-item">
						<a class="nav-link" href="" style="color: #0000FF;">WellCome ${sessionScope.user.fullname}</a></li>
						<li class="nav-item">
						<a class="nav-link" href="login" style="color: #0000FF;">Logoff</a></li>
					</c:if>
					<c:if test="${sessionScope.user == null}">
						<li><a href="login">Login</a></li>
					</c:if>
					
				</ul>
			</div>
		</nav>
	</c:if>

</nav>


