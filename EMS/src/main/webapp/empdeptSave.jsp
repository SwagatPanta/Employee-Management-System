<%@page import="com.mycompany.ems.entity.EmpDept"%>
<%@page import="com.mycompany.ems.dao.impl.EmpDeptDAOImpl"%>
<%@page import="com.mycompany.ems.dao.EmpDeptDAO"%>
<%@page import="java.util.Calendar"%>

<%
    if (!request.getMethod().equalsIgnoreCase("POST")) {
        response.sendRedirect("employeDepartment.jsp");
    }
    int id = 0;
    EmpDeptDAO empdeptDAO = new EmpDeptDAOImpl();
    EmpDept ed = new EmpDept();

    try {
        ed.setEmpId(Integer.parseInt(request.getParameter("empId")));
        ed.setDeptId(Integer.parseInt(request.getParameter("deprtId")));
    } catch (NumberFormatException nfe) {
        out.println(nfe.getMessage() + " numberformate exception");
    }
    //ed.setSalary(Float.parseFloat(request.getParameter("salary")));


    try {
        out.println("swagat");
        out.println("id=" + ed.getEmpId());
        if ((request.getParameter("id") == null) || (request.getParameter("id").isEmpty())) {

            if (empdeptDAO.insert(ed) > 0) {
                response.sendRedirect("employesalary.jsp?success");
            } else {

                out.println("<h1>ERROR!!!!</h1>");
                out.println("<a href='javascript:history.back()'>something went wrong please went back</a>");
            }
        } else {

            //from hidden inpute
            ed.setEmpId(Integer.parseInt(request.getParameter("empId")));

            if (empdeptDAO.update(ed) > 0) {
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