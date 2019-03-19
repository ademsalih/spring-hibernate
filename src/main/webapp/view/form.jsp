<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: abdifatah
  Date: 2019-01-21
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="header.jsp"></jsp:include>
<body>

</body>

<div class="container">
    <div class="row my-5">
        <div class="col-sm-6 mx-auto">
            <h4 class="text-primary text-center">Add new Student</h4>

            <form:form method="post" action="/save" modelAttribute="student">
                <div class="form-group">
                    <form:input type="text" class="form-control" placeholder="First Name" path="firstName"/>
                </div>

                <div class="form-group">
                    <form:input type="text" class="form-control" placeholder="Last Name" path="lastName"/>
                </div>


                <button type="submit" class="btn btn-primary">Save</button>

        </div>
    </div>
</div>

</form:form>
</html>
