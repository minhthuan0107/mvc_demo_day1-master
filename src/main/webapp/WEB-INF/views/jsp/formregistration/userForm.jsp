<%@ page contentType="text/html; charset=iso-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<html>
<head>
    <title>Spring MVC Form Handling</title>
</head>
<body>
<h2>
    User Registration Form
</h2>
<%--@elvariable id="user" type=""--%>
<mvc:form modelAttribute="user" action="result">
    <table>
        <tr>
            <td> First Name (*) </td>
            <td> <mvc:input path="name" requied="true" placeholder="FirstName"/></td>
        </tr>
        <tr>
            <td> Last Name (*) </td>
            <td> <mvc:input path="lastname" requied="true" placeholder="LastName"/> </td>
        </tr>
        <tr>
            <td> Password (*) </td>
            <td> <mvc:password path="password" requied="true" placeholder="Password"/> </td>
        </tr>
        <tr>
            <td> Detail (*) </td>
            <td> <mvc:textarea path="detail" placeholder="Datail information"/> </td>
        </tr>
        <tr>
            <td> Birth Date </td>
            <td> <mvc:input path="birthDate" type="Date"/> </td>
        </tr>
        <tr>
            <td> Gender </td>
            <td> <mvc:radiobuttons path="gender" items="${genders}" /> </td>
        </tr>
        <tr>
            <td> Country </td>
            <td> <mvc:select path="country" items="${countries}" /> </td>
        </tr>
        <tr>
            <td> Smoking </td>
            <td> <mvc:checkbox path="nonSmoking" ckecked="true" /> </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="submit">
            </td>
        </tr>
    </table>
</mvc:form>
</body>
</html>