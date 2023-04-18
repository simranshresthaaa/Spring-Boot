<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<!-- //cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css
 --><link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css"
	rel="stylesheet" type="text/css">


<script type="text/javascript">

$(document).ready(function () {
    $('#empTab').DataTable({
        pagingType: 'full_numbers',
    });
});
</script>
</head>
<body>
<h3>View  Employee</h3>
<a href="loadForm">AddEmployee</a>
<table id="empTab" class="table">
<thead class="thead-dark">
<tr>
<th>
EmpNumber
</th>
<th>
EmpName
</th>
<th>
EmpAddress
</th>
<th>Edit</th>
<th>Delete</th>
</tr>
</thead>
<tbody>
<c:forEach items="${employees}" var="emp">
<tr>
<td>${emp.empNo}</td>

<td>${emp.empName}</td>
<td>${emp.empAddress}</td>
  <td><a href="editstu?id=${emp.empNo}">Edit</a></td>
     <td><a href="deleteEmp?id=${emp.empNo}">Delete</a>

</tr>
</c:forEach>

</tbody>

</table>
</body>
</html>