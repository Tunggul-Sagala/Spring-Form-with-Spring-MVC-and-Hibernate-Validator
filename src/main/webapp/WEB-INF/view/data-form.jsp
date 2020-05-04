<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>Student Data</title>
</head>
<body>
	<p>
	<h3>Student Data</h3>
	<p>
	Name: ${student.firstName} ${student.lastName}. 
	<br><br>
	Email: ${student.email}
	<br><br>
	Postal code: ${student.postalCode}
	<br><br>
	Country: ${student.country}
	<br><br>
	Programming langguage: ${student.programmingLangguage} 
	<br><br>
	Operating system: ${student.operatingSystem}
	<br><br>
</body>
</html>