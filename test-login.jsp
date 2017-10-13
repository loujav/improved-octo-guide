<%@ page import ="java.sql.*,java.util.*" %>

<%
	
	String user = "";
	String pass = "";
	
    user = request.getParameter("uname");    
    pass = request.getParameter("pword");
   
	Connection conn = null;
    String url = "jdbc:mysql://localhost:3306/";
	String dbName = "lordofmu";
	String driver = "com.mysql.jdbc.Driver";
	String userName = "root";
	String password = "";
	
	String sessionId = "",urUname="",urEmail="";
	
	try {
		Class.forName(driver).newInstance();
		conn = DriverManager.getConnection(url + dbName, userName, password);
		Statement st = conn.createStatement();
		
		ResultSet rs = st.executeQuery("SELECT * FROM accounts_tbl WHERE username='"+user+"' AND password='"+pass+"'");
		
		int cnt = 0;
		while(rs.next()){
			cnt=1;
			sessionId = rs.getString("user_id");
			urUname = rs.getString("username");
			urEmail = rs.getString("email");
		}
		
		if(cnt == 1){
			session.setAttribute("user",sessionId);	
			session.setAttribute("yourUsername",urUname);
			session.setAttribute("yourEmail",urEmail);
			
			List<String> pname = new ArrayList<String>();
			List<String> pqty = new ArrayList<String>();
			List<String> pimg = new ArrayList<String>();
			List<String> pamt = new ArrayList<String>();
			
			session.setAttribute("pname",pname);
			session.setAttribute("pqty",pqty);
			session.setAttribute("pimg",pimg);
			session.setAttribute("pamt",pamt);
	
			response.sendRedirect("home.jsp");
		}
		else{
			//out.print("Incorrect username or password!");
			session.setAttribute("incorrectLog","true");
			response.sendRedirect("login.jsp");
		}
		
		conn.close();
	}
	catch (Exception e) {
		//e.printStackTrace
		out.print("Error occured!");
	}
	

%>