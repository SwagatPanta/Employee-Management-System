
<%@page import="com.mycompany.ems.dao.impl.EmployeDAOImp"%>
<%@page import="com.mycompany.ems.dao.EmployeDAO"%>
<%@page import="com.mycompany.ems.entity.Employe"%>
<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    EmployeDAO empDAO = new EmployeDAOImp();
%>



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
                <h4 class="modal-title">Add Employee</h4>
            </div>
            <div class="modal-body">

                <form action="empSave.jsp" method="post">
                    <div class="form-group">
                        <label> first name</label>
                        <input type="text" name="firstName" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label> last name</label>
                        <input type="text" name="lastName" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label> email</label>
                        <input type="text" name="email" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label> contact number</label>
                        <input type="text" name="contactNumber" class="form-control" />
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
<!--model end-->


<table class="table table-striped table-hover table-bordered">

    <th>id</th>
    <th>first name</th>
    <th>last name</th>
    <th> email</th>
    <th>contactNo</th>
    <th>joinDate</th>   
    <th>status</th>
    <th>action</th>



    <%for (Employe e : empDAO.getAll()) {%>

    <form action="save.jsp" method="post">

        <tr>
            <td> <%=e.getId()%></td>
            <td> <%=e.getFirstName()%></td>
            <td> <%=e.getLastName()%></td>
            <td> <%=e.getEmail()%></td>
            <td> <%=e.getContactNo()%></td>
            <td> <%=e.getJoinDate()%></td>
            <td> <%=e.isStatus()%></td>


            <td> 
                <a href="edit.jsp?id=<%= e.getId()%> " class="btn btn-success"><span class="glyphicon glyphicon-pencil"></span></a>
                <!--<input type="hidden" name="id" value="<%=e.getId()%>"/>-->
                <!--<input type="submit" onclick="return confirm('are you sure want to delete?')" value="delete" class="btn btn-danger"></input>-->

                <a href="delete.jsp?id=<%=e.getId()%>"  class= "btn btn-danger" onclick="return confirm('are you sure want to delete?')" type="submit">
                    <span class="glyphicon glyphicon-trash"></span></a>
            </td>
        </tr>
    </form>
    <%}%>
</table>


<%@include file="footer.jsp" %>