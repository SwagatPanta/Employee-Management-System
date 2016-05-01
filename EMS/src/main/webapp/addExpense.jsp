<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 6/13/14
  Time: 3:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>add expense</title>
    <link rel="stylesheet" type="text/css" href="style_css/mystylesheet.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script>
        $(function() {
            $( "#datepicker" ).datepicker();
        });
    </script>
</head>
<body>


<jsp:include page="../includes/header.jsp"/>
<div id="content" style="margin-left: 330px;margin-bottom: 10px">
    Welcome <%=session.getAttribute("userName")%>
    <h2>Your Financial Management</h2>
    <form action="/iteminfoservlet" method="post">
      <table style="padding-left: 200px;margin-top: 10px;border: 1px">

          <tr><td>Expense title</td><td style="background-color: limegreen"><input name="itemname" type="text" required="required"/></td></tr>
          <tr><td>Expense amount</td><td style="background-color: limegreen"><input name="itemprice" type="text" required="required"/> </td></tr>
          <tr><td>Expense date</td><td style="background-color: limegreen;border-bottom-color: limegreen"><input name="transactiontime" type="date" id="datepicker" required="required"/></td></tr>
          <tr><td> </td></tr><tr><td><input type="hidden" name="userid" id="id" value="${userid}"></td></tr>

          <tr><td> </td><td><input type="submit" name="submit" value="submit"/></td></tr>
      </table>
    </form>
</div>
<jsp:include page="../includes/footer.jsp"/>
</body>
</html>
