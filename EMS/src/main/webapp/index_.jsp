<%@page import="java.util.List"%>
<%@page import="com.mycompany.jspwebproject.dao.DepartmentDAO"%>
<%@page import="com.mycompany.jspwebproject.dao.impl.DepartmentDAOImpl"%>
<%@page import="com.mycompany.jspwebproject.entity.Department"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="header.jsp" %>
<h1>Department</h1>

<%
    DepartmentDAO dptDAO = new DepartmentDAOImpl();
    try {
        // Department d = new Department(1, "Acount", "amazing department", true);
        // dptDAO.insert(d);

        /*
         * for (Department a : dptDAO.getAll()) { out.println(a.toString()); }
         */

        int id = 1;
        if (request.getParameter("id") != null) {

            id = Integer.parseInt(request.getParameter("id"));
        }

        out.println(dptDAO.getById(id).toString());
    } catch (Exception e) {
        out.println("in index.jsp" + e);
    }
%>



<table class="table table-striped table-hover table-bordered">

    <!-- <div class ="pull-right"><p><a href="mAdd.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span></a></a></div>-->




    <!-- Trigger the modal with a button -->
    <div class="pull-right">
        <p>  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-plus"></span></button>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Add Department</h4>
                </div>
                <div class="modal-body">

                    <form action="save.jsp" method="post">
                        <div class="form-group">
                            <label>name</label>
                            <input type="text" name="dept_name" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label>description</label><textarea  name="description" class="form-control"></textarea>
                        </div>
                        <div class="checkbox">
                            <label>status</label><label> <input type="checkbox" name="status" />active</label>

                        </div>
                        <button type="submit" class="btn btn-success" >Save</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>                      
                    </form>

                </div>

            </div>
        </div> 
    </div>




    <th>id</th>
    <th>name</th>
    <th>description</th>
    <th>started date</th>
    <th>modified date</th>
    <th>status</th>
    <th>action</th>

    <%for (Department d : dptDAO.getAll()) {%>

    <form action="save.jsp" method="post">

        <tr>
            <td> <%=d.getId()%></td>
            <td> <%=d.getName()%></td>
            <td> <%=d.getDescription()%></td>
            <td> <%=d.getAddedDate()%></td>
            <td> <%
                if (d.getModifiedDate() != null) {

                    out.println(d.getModifiedDate());
                }
                %></td>
            <td> <%=d.isStatus()%></td>
            <td> 
                <a href="edit.jsp?id=<%= d.getId()%> " class="btn btn-success"><span class="glyphicon glyphicon-pencil"></span></a>
                <!--<input type="hidden" name="id" value="<%=d.getId()%>"/>-->
                <!--<input type="submit" onclick="return confirm('are you sure want to delete?')" value="delete" class="btn btn-danger"></input>-->

                <a href="delete.jsp?id=<%=d.getId()%>"  class= "btn btn-danger" onclick="return confirm('are you sure want to delete?')" type="submit">
                    <span class="glyphicon glyphicon-trash"></span></a>
            </td>
        </tr>
    </form>
    <%}%>
    <%@include  file="footer.jsp" %>