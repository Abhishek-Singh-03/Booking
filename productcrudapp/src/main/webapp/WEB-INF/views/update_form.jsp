<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Change the Booking detail</h1>
				
				<form action="handle-product" method="post">
				
					<div class="form-group">
						<label for="name">Customer Id</label>
						<input type="text"
						class="form-control"
						id="cust_Id"
						name="cust_Id"
						placeholder="Enter customer id here"
						>
					</div>
					
					<div class="form-group">
						<label for="name">Customer Name</label>
						<input type="text"
						class="form-control"
						id="name"
						aria-describedby="emailHelp"
						name="name"
						placeholder="Enter the product name here"
						>
					</div>
					
					<div class="form-group">
						<label for="name">Email</label>
						<input type="text"
						class="form-control"
						id="email"
						aria-describedby="emailHelp"
						name="email"
						placeholder="Enter the email here"
						>
					</div>
					
					<div class="form-group">
						<label for="name">Phone number</label>
						<input type="text"
						class="form-control"
						id="phone"
						name="phone"
						placeholder="Enter phone number here">
					</div>
					
					<div class="form-group">
						<label for="name">Shot price</label>
						<input type="text"
						class="form-control"
						id="price"
						name="price"
						placeholder="Enter shot price">
					</div>
					
					<div class="form-group">
						<label for="name">Shoting Date</label>
						<input type="date"
						class="form-control"
						id="date"
						name="date"
						placeholder="Enter shot date here">
					</div>
					
					<div class="form-group">
						<label for="name">Booking Id</label>
						<input type="text"
						class="form-control"
						id="book_Id"
						name="book_Id"
						placeholder="Enter booking id here">
					</div>
					
					<div class="form-group">
						<label for="name">Loaction Id</label>
						<input type="text"
						class="form-control"
						id="loc_Id"
						name="loc_Id"
						placeholder="Enter Location id here">
					</div>
					
					<div class="form-group">
						<label for="name">Shoting Id</label>
						<input type="text"
						class="form-control"
						id="shot_Id"
						name="shot_Id"
						placeholder="Enter shoting id here">
					</div>
					
					
					
				<div class="container text-center">
					<!-- ${pageContext.request.contextPath }/ -->
					<a href="${pageContext.request.contextPath }/" 
					class="btn btn-outline-danger">Back</a>
					<button type="submit" class="btn btn-primary">Add</button>
				</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>