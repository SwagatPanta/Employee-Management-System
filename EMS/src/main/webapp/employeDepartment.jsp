
<%@page import="com.mycompany.ems.entity.Department"%>
<%@page import="com.mycompany.ems.dao.impl.DepartmentDAOImpl"%>
<%@page import="com.mycompany.ems.dao.DepartmentDAO"%>
<%@page import="com.mycompany.ems.entity.Employe"%>
<%@page import="com.mycompany.ems.dao.impl.EmployeDAOImp"%>
<%@page import="com.mycompany.ems.dao.EmployeDAO"%>
<%@include file="header.jsp" %>



<%
    EmployeDAO empDAO = new EmployeDAOImp();
    DepartmentDAO dprtDAO = new DepartmentDAOImpl();
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
                <h4 class="modal-title">Add Employee Department</h4>
            </div>
            <div class="modal-body">

                <form action="empdeptSave.jsp" method="post">

                    <!--combobox-->


                    <div class="form-group">
                        <label class="col-xs-3 control-label">Employee</label>
                        <div class="col-xs-8 selectContainer">
                            <select class="form-control" name="empId">
                                <%for (Employe e : empDAO.getAll()) {%>                               
                                <option value="<%=e.getId()%>"><%=e.getFirstName()%></option>
                                <%}%>
                            </select>
                        </div>
                    </div><br>
                    <div class="form-group">
                        <label class="col-xs-3 control-label">Department</label>
                        <div class="col-xs-8 selectContainer">
                            <select class="form-control" name="deprtId">
                                <%for (Department d : dprtDAO.getAll()) {%>                               
                                <option value="<%=d.getId()%>"><%=d.getName()%></option>
                                <%}%>
                            </select>
                        </div>
                    </div> <br>
                     
                    <div class="form-group">
                        <label class="col-xs-3 control-label">join date</label>
                        <div class="col-xs-8 selectContainer">
                            <input type="text" name="salary" class="form-control" /> 
                        </div>
                    </div><br>
                    <div class="form-group">
                        <label class="col-xs-3 control-label">end date</label>
                        <div class="col-xs-8 selectContainer">
                            <input type="text" name="salary" class="form-control" /> 
                        </div>
                    </div>

                    <input type="submit" class="btn btn-success"  value="save"></inpute>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>                      
                </form>

            </div>

        </div>
    </div> 
</div>
<!--model end-->

