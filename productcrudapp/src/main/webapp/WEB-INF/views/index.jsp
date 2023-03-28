<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="ISO-8859-1">
<title>index</title>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to Admin Booking</h1>
				
				<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Customer_Id</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Phone</th>
      <th scope="col">Price</th>
      <th scope="col">Date</th>
      <th scope="col">Booking_Id</th>
      <th scope="col">Location_Id</th>
      <th scope="col">Shoting_Id</th>
      <th scope="col">Action</th>
 
    </tr>
  </thead>
  <tbody>
  
  <c:forEach items="${products }" var="p">
    <tr>
    
      
      <td>${p.cust_Id}</td>
      <td>${p.name}</td>
      <td>${p.email}</td>
      <td>${p.phone}</td>
      <td class="font-weight-bold">&#8377;${p.price}</td>
      <td>${p.date}</td>
      <td>${p.book_Id}</td>
      <td>${p.loc_Id}</td>
      <td>${p.shot_Id}</td>
      
      <td>
      	<a href="delete/${p.cust_Id}"><i class="fas fa-trash text-danger" style="font-size:25px;"></i></a>
      	<a href="update/${p.cust_Id}"><i class="fas fa-pen-nib text-primary" style="font-size:25px;"></i></a>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>

	<div class="container text-center">
		<a href="add-product" class="btn btn-outline-success">Add Booking</a>
	</div>
	
			</div>
		</div>
	</div>
</body>
</html>