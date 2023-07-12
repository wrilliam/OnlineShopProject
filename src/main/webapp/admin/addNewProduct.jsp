<%@ page import="backend.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@ include file="adminHeader.jsp"%>
<%@ include file="../footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>
</head>
<body>
	<%
	String msg = request.getParameter("msg");
	if ("done".equals(msg)) {
	%>
	<h3 class="alert">Product Added Successfully!</h3>
	<%
	} else if ("error".equals(msg)) {
	%>
	<h3 class="alert">Whoops! Something went wrong! Please try again!</h3>
	<%
	}
	int id = 1;
	try {
	Connection connect = ConnectionProvider.getConnection();
	Statement stmt = connect.createStatement();
	ResultSet rs = stmt.executeQuery("SELECT MAX() FROM Products");
	while (rs.next()) {
		id = rs.getInt(1);
		id += 1;
	}
	} catch (Exception e) {
	}
	%>
	<form action="addNewProductAction.jsp" method="post">
		<h3 style="color: yellow;">
			Product ID:
			<%
		out.println(id);
		%>
		</h3>
		<input type="hidden" name="id" value="<%out.println(id);%>">
		<div class="left-div">
			<h3>Enter Name</h3>
			<input class="input-style" type="text" name="name"
				placeholder="Please enter the product's name" required>
			<hr>
		</div>
		<div class="right-div">
			<h3>Enter Category</h3>
			<input class="input-style" type="text" name="category"
				placeholder="Please enter the product's category" required>
			<hr>
		</div>
		<div class="left-div">
			<h3>Enter Price</h3>
			<input class="input-style" type="number" name="price"
				placeholder="Please enter the product's price" required>
			<hr>
		</div>
		<div class="right-div">
			<h3>Active</h3>
			<select class="input-style" name="active">
				<option value="Yes">Yes</option>
				<option value="No">No</option>
			</select>
			<hr>
		</div>
		<button class="button">
			Save <i class='far fa-arrow-alt-circle-right'></i>
		</button>
	</form>
</body>
<br>
<br>
<br>
</body>
</html>