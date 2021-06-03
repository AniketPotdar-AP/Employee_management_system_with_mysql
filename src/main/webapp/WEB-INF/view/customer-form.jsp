<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Save Customer</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/addCustomer.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Abel&display=swap"
	rel="stylesheet">
 </head>
<body>

	<div id="container">

		<div id="main2">
			<img alt=""
				src="${pageContext.request.contextPath}/resources/assets/Images/logo1.png">

			<h1 id="welcome">Welcome</h1>
			<h6>Stay Connected with us</h6>

		</div>
		<div id="main1">

			<h1 id="content">Add Customer</h1>
			<hr>
			<form:form action="saveCustomer" modelAttribute="customer"
				method="POST">

				<form:hidden path="id"/>
				
				<form:input path="firstName" id="firstName" placeholder="First Name"
					class="input" />
				<form:input path="lastName" id="lastName" placeholder="Last Name"
					class="input" />
				<form:input path="email" id="email" placeholder="Email"
					class="input" />
				<input type="submit" value="Save" class="save" />
				
			</form:form>

			<div style="clear: both;"></div>
			<p id="back">
				<a href="${pageContext.request.contextPath}/customer/list"> Back
					to List</a>

			</p>
		</div>
	</div>

</body>
</html>