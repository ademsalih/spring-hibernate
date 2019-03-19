<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: abdifatah
  Date: 2019-01-21
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
 <jsp:include page="header.jsp"></jsp:include>
<body>

</body>

   <div class="container">
       <div class="row my-5">
           <div class="col-sm-8 mx-auto">
               <h4 class="text-primary text-center">Student List</h4>
               <table class="table">
                   <thead>
                   <tr>
                       <th scope="col">Id</th>
                       <th scope="col">First Name</th>
                       <th scope="col">Last Name</th>

                   </tr>
                   </thead>
                   <tbody>
                    <c:forEach var="student" items="${students}">

                        <tr>
                            <th> ${student.id} </th>
                            <td>${student.firstName}</td>
                            <td>${student.lastName}</td>
                            <td>
                                <a href="/edit/${student.id}" class="btn btn-white btn-lg text-warning"><i class="fas fa-edit"></i> </a>

                            </td>

                            <td>
                                <a href="/delete/${student.id}" class="btn btn-white btn-lg text-danger"> <i class="fas fa-trash-alt"></i>  </a>

                            </td>

                        </tr>

                    </c:forEach>


                   </tbody>
               </table>

           </div>
       </div>
   </div>


</html>
