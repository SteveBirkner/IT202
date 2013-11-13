<html>
	<head>
		<title>Add/Delete Songs</title>
		
		<body>
			<%@ page import="java.sql.*" %>
			<%@ page import="java.io.*" %>
		<%
				String url = "jdbc:mysql://sql2.njit.edu/smb38";
				String user = "smb38";
				String pass = "V81iX37K";
				Connection conn = null;
				String classPath = "com.mysql.jdbc.Driver";

				try {
					Class.forName(classPath);
					conn = DriverManager.getConnection(url,user,pass);

				} catch(Exception exc) {

					out.println(exc.toString());
				}



			%>
			<% 
				Statement stm=null;
				ResultSet rst=null;
				stm = conn.createStatement();
				rst = stm.executeQuery("SELECT * FROM Songs");


			%>
			<table border="solid 1px black" padding="2px">
				<tr>
					<th>Song</th><th>Artist</th>
				</tr>
				<% while(rst.next()) { %>
				<tr>
					<td> <%= rst.getString("title") %> </td>
					<td> <%= rst.getString("artist") %> </td>

				</tr>
				<% }
					rst.close();
					stm.close();
					conn.close();
				 %>
			</table>







			<form action="db.jsp" METHOD=post>
				<p>
					<label for="songName">
  					Song Name:
  					<input name="songName" type="text" id = "songName" />
  					</label>
  					<br />

  					<label for="artist">
  					Artist:
  					<input name="artist" type="text" id = "artist" />
  					</label>
  					<br />
  					<label>
				  		Add or Delete?
				  		<label>Add <input type="radio" name="ad" value=1 /></label> 
						  <label>Delete <input type="radio" name="ad" value=0 /> </label>
					</label>
					<br>

					<label for="pass">
			  			Password:
			  			<input name="pass" type="password" id = "pass" />
			  			 
			  		</label>
			  		<br />

					<input type="reset" />
  					<input type="submit" id = "subBut"  />
				</p>
			</form>
		</body>
	</head>
</html>