<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
  <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EmployeeManagement</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<div class="container">
<div class="card">
<div class="card-header">

<h1 style="text-align: center;">Employee Login Form</h1>
</div>

<div class="card-body">
${msg}
<form:form action="insert" modelAttribute="emp">

<div class="form-group">
    <label for="empName">EmployeeName</label>
    
    <form:input path="empName" name="ename"   class="form-control" id="empName" placeHolder="EnterEmployeeName"/>
    
    
  </div>

<div class="form-group">
    <label for="empAddress">EmployeeAddress</label>
    
    <form:input path="empAddress"  name="eadd"  class="form-control" id="empAddress" placeHolder="EnterEmployeeAddress"/>
    
    
  </div>

  <button type="submit" class="btn btn-primary">Submit</button>

  <button type="reset" class="btn btn-primary">Reset</button>

</form:form>
<a href="viewEmployee">ViewAllEmployees</a>

</div>

</div>


</div>




</body>
</html>