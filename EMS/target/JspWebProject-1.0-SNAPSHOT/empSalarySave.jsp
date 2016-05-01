<%@page import="com.mycompany.ems.entity.EmployeSalary"%>
<%@page import="com.mycompany.ems.dao.impl.EmployeSalaryDAOImp"%>
<%@page import="com.mycompany.ems.dao.EmployeSalaryDAO"%>
<%@page import="java.util.Calendar"%>

<%
    if (!request.getMethod().equalsIgnoreCase("POST")) {
        response.sendRedirect("index.jsp");
    }
    int id = 0;
    EmployeSalaryDAO empSalDAO = new EmployeSalaryDAOImp();
    EmployeSalary es = new EmployeSalary();
    try {
        es.setEmployeId(Integer.parseInt(request.getParameter("userId")));
    } catch (NumberFormatException nfe) {
        out.println(nfe.getMessage() + " numberformate exception");
    }
    es.setSalary(Float.parseFloat(request.getParameter("salary")));


    try {
        out.println("swagat");
        out.println("id=" + es.getId());
        if ((request.getParameter("id") == null) || (request.getParameter("id").isEmpty())) {

            if (empSalDAO.insert(es) > 0) {
                response.sendRedirect("employesalary.jsp?success");
            } else {

                out.println("<h1>ERROR!!!!</h1>");
                out.println("<a href='javascript:history.back()'>something went wrong please went back</a>");
            }
        } else {

            es.setId(Integer.parseInt(request.getParameter("id")));

            if (empSalDAO.update(es) > 0) {
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