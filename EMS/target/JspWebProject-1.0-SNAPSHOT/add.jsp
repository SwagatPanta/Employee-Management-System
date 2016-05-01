

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="header.jsp" %>
<h1>Add Department</h1>

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
    <button type="submit" class="btn btn-success" >save</button>
    <a href="index.jsp" class="btn btn-danger">back</a> 
</form>


<%@include  file="footer.jsp" %>
