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

 <link rel="stylesheet" href="CSS/reg.css" type="text/css">
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
	<div
		
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
