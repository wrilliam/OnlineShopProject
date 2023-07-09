<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
	<div id='container'>
		<div class='signup'>
			<form action="loginAction.jsp" method="post">
				<input type="email" name="email" placeholder="Please enter your e-mail address" required>
				<input type="password" name="password" placeholder="Please enter your password" required>
				<input type="submit" value="Log in">
			</form>
			<h2>
				<a href="signup.jsp">Sign Up</a>
			</h2>
			<h2>
				<a href="forgotPassword.jsp">Forgot Password?</a>
			</h2>
		</div>
		<div class='whysignLogin'>
			<%
			String msg = request.getParameter("msg");
			if ("notFound".equals(msg)) {
			%>
			<h1>Incorrect Username or Password</h1>
			<%
			} else if ("invalid".equals(msg)) {
			%>
			<h1>Whoops! Something went wrong! Please try again!</h1>
			<%
			}
			%>

			<h2>Online Shopping</h2>
			<p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
		</div>
	</div>
</body>
</html>