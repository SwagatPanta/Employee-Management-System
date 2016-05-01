<%@page import="com.mycompany.ems.dao.impl.EmployeDAOImp"%>
<%@page import="com.mycompany.ems.dao.EmployeDAO"%>
<%@page import="com.mycompany.ems.entity.Employe"%>
<%@page import="java.util.Calendar"%>

<%
    if (!request.getMethod().equalsIgnoreCase("POST")) {
        response.sendRedirect("index.jsp");
    }
    int id = 0;
    EmployeDAO dptDAO = new EmployeDAOImp();
    Employe e = new Employe();
    e.setFirstName(request.getParameter("firstName"));
    e.setLastName(request.getParameter("lastName"));
    e.setEmail(request.getParameter("email"));
    e.setContactNo(request.getParameter("contactNumber"));
    e.setStatus((request.getParameter("status") != null) ? true : false);

    try {
        out.println("swagat");
        out.println("id=" + e.getId());
        if ((request.getParameter("id") == null) || (request.getParameter("id").isEmpty())) {

            if (dptDAO.insert(e) > 0) {
                response.sendRedirect("index.jsp?success");
            } else {

                out.println("<h1>ERROR!!!!</h1>");
                out.println("<a href='javascript:history.back()'>something went wrong please went back</a>");
            }
        } else {

            e.setId(Integer.parseInt(request.getParameter("id")));

            if (dptDAO.update(e) > 0) {
                response.sendRedirect("index.jsp?success");
            } else {

                out.println("<h1>ERROR!!!!</h1>");
                out.println("<a href='javascript:history.back()'>something went wrong please went back</a>");
            }

        }
    } catch (Exception ex) {
        out.println(ex.getMessage() + "@save.jsp");
    }
%>