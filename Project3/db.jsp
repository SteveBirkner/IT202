<html>
<head>
	<title>Script</title>
	<body>
	<%@ page import="java.sql.*" %>
	<%
		String url = "jdbc:odbc:http://web.njit.edu/mysql/phpMyAdmin/index.php?server=2&token=d8614f7948e16c21431a428b08f273da";
		String user = "smb38";
		String pass = "V81iX37K";
		Connection conn=null;
		String classPath = "sun.jdbc.odbc.JdbcOdbcDriver";

		try {
			Class.forName(classPath);
			conn = DriverManager.getConnection(url,user,pass);

		} catch(Exception exc) {

			out.println(exc.toString());
		}



	%>
	


		
		<% 
		 //out.println(request.getParameter("pass"));
			if ((request.getParameter("pass")).compareTo("pass") == 0) {
				if( (request.getParameter("ad")).compareTo("1") == 0) {
					//out.println("Add");
				}
				else {
					//out.println("Delete");

				}


			} 
			else {

			out.println("Wrong Password");

			}
		%> 
		<!-- <p>Song Title: </p> <% out.println(request.getParameter("songName")); %>
		<p>Artist: </p> <% out.println(request.getParameter("artist")); %> 

	--> 
		
	</body>
</head>
</html>