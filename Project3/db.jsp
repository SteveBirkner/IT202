<html>
<head>
	<title>Script</title>
	<body>
	<%@ page import="java.sql.*" %>
	<%@ page import="java.io.*" %>
	<%
		String url = "jdbc:mysql://sql2.njit.edu/smb38";
		String user = "smb38";
		String pass = "V81iX37K";
		Connection conn = null;
		String classPath = "com.mysql.jdbc.Driver";
		//"sun.jdbc.odbc.JdbcOdbcDriver";

		try {
			Class.forName(classPath);
			conn = DriverManager.getConnection(url,user,pass);

		} catch(Exception exc) {

			out.println(exc.toString());
		}



	%>
	


		
		<% 
			Statement stm= conn.createStatement();
			String songTitle = request.getParameter("songName");
			String artist = request.getParameter("artist");
			String redirectURL = "http://web.njit.edu/~smb38/IT202/Project3/index.jsp"; 
    
			if ((request.getParameter("pass")).compareTo("pass") == 0) {
				if( (request.getParameter("ad")).compareTo("1") == 0) {
					//out.println("Add");
					try {
						stm.executeUpdate("INSERT INTO Songs VALUES('"+songTitle+"','"+artist+"');");
						response.sendRedirect(redirectURL);
					} catch(Exception e){
					out.println(e.toString());
				}

				}
				else {
					//out.println("Delete");
					stm.executeUpdate("DELETE FROM Songs WHERE title='"+songTitle+"' AND artist='"+artist+"' ;");
					response.sendRedirect(redirectURL);

				}


			} 
			else {

			out.println("Wrong Password");

			}

			stm.close();
			conn.close();
		%> 
		<!-- <p>Song Title: </p> <% out.println(request.getParameter("songName")); %>
		<p>Artist: </p> <% out.println(request.getParameter("artist")); %> 

	--> 
		
	</body>
</head>
</html>