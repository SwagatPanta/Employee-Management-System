<%@page import="java.util.Calendar"%>
<%@page import="com.mycompany.ems.entity.Department" %>
<%@page import="com.mycompany.ems.dao.impl.DepartmentDAOImpl" %>
<%@page import="com.mycompany.ems.dao.DepartmentDAO" %>


<%
    if (!request.getMethod().equalsIgnoreCase("POST")) {
        response.sendRedirect("department.jsp");
    }
    int id = 0;
    DepartmentDAO dptDAO = new DepartmentDAOImpl();
    Department d = new Department();
    d.setName(request.getParameter("dept_name"));
    d.setDescription(request.getParameter("description"));
    d.setStatus((request.getParameter("status") != null) ? true : false);

    try {
        out.println("swagat");
        out.println("id=" + d.getId());
        if ((request.getParameter("id") == null) || (request.getParameter("id").isEmpty())) {

            if (dptDAO.insert(d) > 0) {
                response.sendRedirect("department.jsp?success");
            } else {

                out.println("<h1>ERROR!!!!</h1>");
                out.println("<a href='javascript:history.back()'>something went wrong please went back</a>");
            }
        } else {

            d.setId(Integer.parseInt(request.getParameter("id")));
            d.setModifiedDate(Calendar.getInstance().getTime());
            if (dptDAO.update(d) > 0) {
                response.sendRedirect("index.jsp?success");
            } else {

                out.println("<h1>ERROR!!!!</h1>");
                out.println("<a href='javascript:history.back()'>something went wrong please went back</a>");
            }

        }
    } catch (Exception e) {
        out.println(e.getMessage() + "@save.jsp");
    }
%>