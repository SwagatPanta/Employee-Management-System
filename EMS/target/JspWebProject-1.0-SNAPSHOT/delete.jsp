<%@page import="com.mycompany.jspwebproject.entity.Department"%>
<%@page import="com.mycompany.jspwebproject.dao.impl.DepartmentDAOImpl"%>
<%@page import="com.mycompany.jspwebproject.dao.DepartmentDAO"%>
<%
    Department d = new Department();
    DepartmentDAO dprtDAO = new DepartmentDAOImpl();

    d.setId(Integer.parseInt(request.getParameter("id")));

    dprtDAO.delete(d);
    response.sendRedirect("index.jsp?success");


%>