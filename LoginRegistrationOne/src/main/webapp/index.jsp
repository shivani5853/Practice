<!DOCTYPE html>
<html lang="en">
<head>
<title>Login</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<!-- <link rel="stylesheet" href="CSS/reg.css"> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style type="text/css">
.container {
	margin-top: 5%;
	margin-left: 30%;
}

.row {
	padding: 10px;
}

.transbox {
	margin: 30px;
	background-color: transparent;
	opacity: 0.6;
	filter: alpha(opacity = 60);
}
</style>

</head>
<body>
	<div
		style="background-image: url('CSS/getty_452592363_2000127620009280348_98358.jpg'); background-repeat: no-repeat; background-size: 50% 100%; min-height: 1000%;"
		class="container">
		<!-- <img src="CSS/10-SEO-books-you-should-read-1.jpg" class="img-circle" alt="Cinque Terre" width="1400" height="700">d -->


		
		<form>
			<div class="row">
				<div class="col-md-6">
					<div class="transbox">
						<label for="inputEmail4"><b>User Name</b></label> <input
							type="text" class="form-control" placeholder="User Name" required="required">
							
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="transbox">
						<label for="inputEmail4"><b>Password</b></label> <input
							type="text" class="form-control" placeholder="Password" required="required">
					</div>
				</div>
			</div>

			<div class="checkbox">
				<label><input type="checkbox">Remember me</label>
			</div>

			<button type="button" class="btn btn-primary">Sing in</button>
			<a href="loginPage.jsp" class="btn btn-success">Sing up</a>
			
		</form>
	</div>
</body>
</html>
