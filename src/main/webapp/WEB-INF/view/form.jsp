<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<style>
		.error{
			color: red
		}
	</style>
	
	<title>Student Form</title>
</head>
<body>
	<p>
	<h3>Student Form</h3>
	<p>
	<p>
	Asterisk (*) is mandatory field.
	</p>
	<form:form action="${pageContext.request.contextPath}/showData" method="POST" modelAttribute="student">
		
		First name * <form:input path="firstName" />
					 <form:errors path="firstName" cssClass="error"/>
		<br><br>
		Last name * <form:input path="lastName"/>
					<form:errors path="lastName" cssClass="error"/>
		<br><br>
		Email <form:input path="email"/>
		<br><br>
		Free passes <form:input path="freePasses" />
					<form:errors path="freePasses" cssClass="error" />
		<br><br>
		Country 
				<form:select path="country" >
					<form:options items="${student.countryOptions}"/>
				</form:select>
		<br><br>
		Postal code <form:input path="postalCode"/>
					<form:errors path="postalCode" cssClass="error" />
		<br><br>
		Programming Langguage 
								<form:radiobutton path="programmingLangguage" value="Java"/> Java
								<form:radiobutton path="programmingLangguage" value="Javascript"/> Javascript
								<form:radiobutton path="programmingLangguage" value="Phyton"/> Phyton
								<form:radiobutton path="programmingLangguage" value="C#"/> C#
								<form:radiobutton path="programmingLangguage" value="PHP"/> PHP
		<br><br>
		Operating System 
							<form:checkbox path="operatingSystem" value="Windows"/> Windows
							<form:checkbox path="operatingSystem" value="Mac"/> Mac
							<form:checkbox path="operatingSystem" value="Linux"/> Linux
		<br><br>
		<input type="submit" value="Submit">
		
	</form:form>
</body>
</html>
