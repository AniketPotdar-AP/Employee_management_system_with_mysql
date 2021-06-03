<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>

<head>

<title>List Customers</title>

<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@300&display=swap"
	rel="stylesheet" />

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />


</head>

<body>
	<div id="main">
		<div id="wrapper">
			<div id="emp-list">
				<h2>CRM - Customer Relationship Manager</h2>
			</div>

			<!--  Put new Button : Add Customer -->

			<input type="button" value="Add Customer"
				onclick="window.location.href='showFormForAdd'; return false;"
				class="add-button" />
		</div>
		<p id="cust">Customers</p>
		<hr>
		<div id="container">

			<div id="content">

				<!--  add our html table here -->

				<table>
					<tr>
						<th id="id">Id</th>
						<th class="context">Name</th>
						<th class="context">Email</th>
						<th id="action">Action</th>
					</tr>

					<!-- loop over and print our customers -->
					<c:forEach var="tempCustomer" items="${customers}">

						<!-- Construct an Update link with customer id -->
						<c:url var="updateLink" value="/customer/showFormForUpdate">
							<c:param name="customerId" value="${tempCustomer.id}" />
						</c:url>

						<!-- Construct an Delete link with customer id -->
						<c:url var="deleteLink" value="/customer/delete">
							<c:param name="customerId" value="${tempCustomer.id}" />
						</c:url>

						<tr id="both">
							<td class="bord-left">${tempCustomer.id}</td>
							<td class="bord-center">${tempCustomer.firstName}
								${tempCustomer.lastName}</td>
							<td id="email" class="bord-right">${tempCustomer.email}</td>

							<td class="bord-right">

								<!-- display the update link --> <a id="update" id="up-de" href="${updateLink}"
								>Update</a> | <a  id="delete" href="${deleteLink}"
								onclick="if(!(confirm('Are you sure you want to delete the Customer?'))) return false">Delete</a>
							</td>
						</tr>

					</c:forEach>

				</table>

			</div>

		</div>

	</div>

</body>

</html>

