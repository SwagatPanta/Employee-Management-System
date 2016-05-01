
<%@page import="java.util.List"%>
<%@page import="com.mycompany.ems.dao.DepartmentDAO"%>
<%@page import="com.mycompany.ems.dao.impl.DepartmentDAOImpl"%>
<%@page import="com.mycompany.ems.entity.Department"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="header.jsp" %>
<h1>Edit Department</h1>

<%
    DepartmentDAO dptDAO = new DepartmentDAOImpl();
    Department d = null;
    try {
        int id = 0;
        if (request.getParameter("id") == null) {
            response.sendRedirect("department.jsp?error");
        }
        //get the parameter of id from url 
        id = Integer.parseInt(request.getParameter("id"));
//here d has everything including id of particular row....then we can set id in hidden inpute for update()
        d = dptDAO.getById(id);
        if (d == null) {
            response.sendRedirect("department.jsp?error");

        }

    } catch (Exception e) {
    }


%>

<form action="save.jsp" method="post">
    <div class="form-group">
        <label>name</label>
        <input type="text" name="dept_name" class="form-control" value="<%=d.getName()%>"/>
    </div>
    <div class="form-group">
        <label>description</label><textarea  name="description" class="form-control"><%=d.getDescription()%></textarea>
    </div>
    <div class="checkbox">
        <label>status</label><label> <input type="checkbox" name="status" <% out.println(d.isStatus() ? "checked='checked'" : "");%> />active</label>

    </div>
    <input type="hidden" name="id" value="<%=d.getId()%>"/>
    <button type="submit" class="btn btn-success" >save</button>
    <a href="department.jsp" class="btn btn-danger">back</a> 
</form>


<%@include  file="footer.jsp" %>
