<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
	<div id='container'>
		<div class='signup'>
			<form action="signupAction.jsp" method="post">
				<input type="text" name="name" placeholder="Please enter your name" required>
				<input type="email" name="email" placeholder="Please enter your e-mail address" required>
				<input type="number" name="mobile" placeholder="Please enter your mobile number" required>
				<select name="securityQuestion" required>
					<option value="What was the name of your first school?"></option>
					<option value="What was the name and species of your first pet?"></option>
					<option value="Which town were you born in?"></option>
					<option value="Which was the most unforgettable film you ever watched?"></option>
				</select>
				<input type="text" name="answer" placeholder="Please enter your answer" required>
				<input type="password" name="password" placeholder="Please enter your password" required>
				<input type="submit" value="Sign up">
			</form>
			<h2>
				<a href="login.jsp">Login</a>
			</h2>
		</div>
		<div class='whysign'>
			<%
			String msg = request.getParameter("msg");
			if ("valid".equals(msg)) {
			%>
			<h1>User registered successfully!</h1>
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