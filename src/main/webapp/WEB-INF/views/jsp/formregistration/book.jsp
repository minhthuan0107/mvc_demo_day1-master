<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<jsp:include page="header.jsp"></jsp:include>
<body>
<div class="container" style="margin-top: 60px;">
    <div class="col-md-4">
        <%--@elvariable id="book" type=""--%>
        <mvc:form action="${action}" method="post" modelAttribute="book">
            <fieldset class="scheduler-border">
                <legend class="scheduler-border">
                    <c:out value="${msg}"/>
                </legend>
                <c:if test = "${type.equals('update')}">
                <div class="form-group">
                    <label class="control-label">ID</label>
                    <mvc:input type="text" class="form-control col-md-6" path="id" disabled="true"/>
                    <mvc:hidden path="id"/>
                    <mvc:hidden path="bookDetails.id"/>
                </div>
                </c:if>
                <div class="form-group">
                    <label class="control-label">Name (*)</label>
                    <mvc:input type="text"  class="form-control col-md-6" path="name" required="true"/>
                </div>
                <div class="form-group">
                    <label class="control-label">Author (*)</label>
                    <mvc:input type="text" class="form-control col-md-6" path="author" required="true"/>
                </div>
                <div class="form-group">
                    <label class="control-label">ISBN (*)</label>
                    <mvc:input type="text" class="form-control col-md-6" path="bookDetails.isbn" required="true"/>
                </div>
                <div class="form-group">
                    <label class="control-label">Price (*)</label>
                    <mvc:input type="number" class="form-control col-md-6" path="bookDetails.price" min="1" required="true"/>
                </div>
                <div class="form-group">
                    <label class="control-label">Number of pages (*)</label>
                    <mvc:input type="number" class="form-control col-md-6" path="bookDetails.numberOfPage" min="1" required="true"/>
                </div>
                <div class="form-group">
                    <label class="control-label">Publish Date(*)</label>
                    <mvc:input type="date" class="form-control col-md-6" path="bookDetails.publishDate"  required="true"/>
                </div>
                <div class="form-group">
                    <label class="control-label">Category (*)</label>
                    <mvc:select path="category.id" class="form-control col-md-6">
                        <mvc:option value="0" label="-----Select"/>
                        <mvc:options items="${categorylist}"/>
                    </mvc:select>
                </div>
                <br>
                <button type="submit" class="btn btn-info">Save</button>
            </fieldset>
        </mvc:form>
    </div>
</div>
<link rel="stylesheet" type="text/css" href='${pageContext.request.getContextPath()}/webjars/bootstrap/5.1.3/css/bootstrap.min.css' />
<script type="text/javascript" src="${pageContext.request.getContextPath()}/webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
</body>
</html>