<%@ include file="changeDetailsHeader.jsp" %>
<%@ include file="footer.jsp" %>
<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>
<%@ page import="java.util.ResourceBundle" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Change Mobile Number</title>
    <link rel="stylesheet" href="css/changeDetails.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
    <%
        String msg = request.getParameter("msg");
        if ("done".equals(msg)) {
    %>
        <h3 class="alert">Your Mobile Number was successfully changed!</h3>
    <%
        } else if ("wrong".equals(msg)) {
    %>
        <h3 class="alert">Your password is incorrect!</h3>
    <%
        }
    %>
    <form method="post" action="<%= request.getContextPath() %>/changeMobileNumberAction">
        <h3>Enter Your New Mobile Number</h3>
        <input class="input-style" type="tel" name="mobileNumber" placeholder="Enter Your New Mobile Number" required>
        <hr>
        <h3>Enter Your Password (For Security)</h3>
        <input class="input-style" type="password" name="password" placeholder="Enter Your Password For Security Purposes" required>
        <hr>
        <button class="button" type="submit">Save<i class='far fa-arrow-alt-circle-right'></i></button>
    </form>
    <br><br><br>
</body>
</html>
