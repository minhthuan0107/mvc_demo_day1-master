<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href='${pageContext.request.getContextPath()}/webjars/bootstrap/5.1.3/css/bootstrap.min.css' />
    <script type="text/javascript" src="${pageContext.request.getContextPath()}/webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    <title>Spring MVC Form Handling</title>
    <style>
        <%@include file="/resources/css/main.css" %>
    </style>
    <script>
        <%@include file="/resources/js/main.js" %>
    </script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

    <jsp:include page="header.jsp" />
</head>
<body>
<h2>
    User Registration Form
</h2>
<%--@elvariable id="user" type=""--%>
<mvc:form modelAttribute="user" action="result" >
    <table>
        <tr>
            <td> First Name (*) </td>
            <td> <mvc:input path="name" requied="true" placeholder="FirstName" class="form-control"/></td>
        </tr>
        <tr>
            <td> Last Name (*) </td>
            <td> <mvc:input path="lastname" requied="true" placeholder="LastName" class="form-control"/> </td>
        </tr>
        <tr>
            <td> Password (*) </td>
            <td> <mvc:password path="password" requied="true" placeholder="Password" class="form-control"/> </td>
        </tr>
        <tr>
            <td> Detail (*) </td>
            <td> <mvc:textarea path="detail" placeholder="Datail information" class="form-control"/> </td>
        </tr>
        <tr>
            <td> Birth Date </td>
            <td> <mvc:input path="birthDate" type="Date" class="form-control"/> </td>
        </tr>
        <tr>
            <td> Gender </td>
            <td> <mvc:radiobuttons path="gender" items="${genders}" /> </td>
        </tr>
        <tr>
            <td> Country </td>
            <td> <mvc:select path="country" items="${countries}" class="form-control" /> </td>
        </tr>
        <tr>
            <td> Smoking </td>
            <td> <mvc:checkbox path="nonSmoking" ckecked="true" /> </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="submit" class="btn btn-primary">
            </td>
        <td>
            <button class="btn btn-primary" id="myButton">Submit</button>
        </td>
        </tr>
    </table>
</mvc:form>
</body>
</html>