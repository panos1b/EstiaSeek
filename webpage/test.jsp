<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<%@ page contentType="text/html; charset=UTF-8" %>


<!Doctype html>
<html>
	<head>
		<title>Η σελίδα test.jsp</title>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="css/style.css" type="text/css"/>		
	</head>
	<body>
		<div id="page">
			<p><img src="images/DET_Logo_70.gif" alt="DMST logo" width="70" height="94"></p>
			<h1>Τμήμα Διοικητικής Επιστήμης και Τεχνολογίας</h1>		
			<span class="message">*** test.jsp ***</span>
			<p>
				<strong>Ημερομηνία:</strong>
				<em><%= getCurrentDate()  %></em>
			</p>
			<p><a href="index.html">back to index.html</a></p>
		</div>		
	</body>
</html>

<%!

public String getCurrentDate() {
	
	Date now = new Date();
	String date_format = "EEEE, d MMM yyyy HH:mm:ss";
        SimpleDateFormat sdf = new SimpleDateFormat(date_format);
	
	return  sdf.format(now);
}

%>