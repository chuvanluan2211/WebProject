<%-- 
    Document   : Home
    Created on : Mar 11, 2022, 11:47:42 PM
    Author     : laptop 2019
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>TransformerWorld Toy</title>

		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

		<!-- Slick -->
		<link type="text/css" rel="stylesheet" href="css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="css/font-awesome.min.css">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="css/style.css"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    </head>
	<body>
           
		<!-- HEADER -->
		<jsp:include page="Menu.jsp"></jsp:include>
		<form action="Home" method="post">

		<div class="container">
			<div class="row">
				<div class="col">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="">Welcom to my store</a></li>
							
						</ol>
					</nav>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
			<jsp:include page="Left.jsp"></jsp:include>
				<div class="col-sm-9">
					<div id="content" class="row">
					<c:forEach items="${lists}" var="o">
						<div class="product col-12 col-md-6 col-lg-4">
							<div class="card">
								<img class="img-responsive" src="./images/${o.image}" alt="Card image cap">
								<div class="card-body">
									<h4 class="card-title show_txt"><a href="Detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
									<p class="card-text show_txt">${o.title}</p>
									<div class="row">
										<div class="col">
											<p class="btn btn-danger btn-block">${o.price} $</p>
										</div>
										<div class="col">
											<a href="cart?id=${o.id}" class="btn btn-success btn-block">Add to cart</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>

		</div>
	</div>





		
		



		

		<jsp:include page="Footer.jsp"></jsp:include>
		<!-- jQuery Plugins -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>
</form>
	</body>
</html>
