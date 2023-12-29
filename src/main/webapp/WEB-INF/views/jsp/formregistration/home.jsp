<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<jsp:include page="header.jsp"></jsp:include>
<body>
<div class="container" style="margin-top: 60px;">
    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-6">
            <mvc:form action="search" method="get">
                <div class="input-group">
                    <input name="searchInput" type="text" class="form-control" placeholder="Seach by name or author..."/>
                    <span class="input-group-btn">
                        <button class="btn btn-primary" type="submit">Search
                        </button>
                    </span>
                </div>
            </mvc:form>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-10">
            <c:if test="${not empty bookList}">
                <table class="table table-condensed table-hover">
                    <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Author</th>
                        <th>ISBN</th>
                        <th>Price</th>
                        <th>Number Of Page</th>
                        <th>Publish Date</th>
                        <th>Category</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="book" items="${bookList}" varStatus="index">
                        <tr>
                            <td>${book.id}</td>
                            <td>${book.name}</td>
                            <td>${book.author}</td>
                            <td>${book.bookDetails.isbn}</td>
                            <td>${book.bookDetails.price}</td>
                            <td>${book.bookDetails.numberOfPage}</td>
                            <td>${book.bookDetails.publishDate}</td>
                            <td>${book.category.name}</td>
                       <td>
                        <button class="btn btn-sm btn-primary" onclick="location.href='edit/${book.id}'">Edit</button>
                        <button class="btn btn-sm btn-danger" onclick="location.href='delete/${book.id}'">Delete</button>
                       </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>
            <c:if test="${bookList.size()==0}">
                <br>
                <div class="alert alert-warning">There is no data</div>
            </c:if>
        </div>
    </div>
</div>
<link rel="stylesheet" type="text/css" href='${pageContext.request.getContextPath()}/webjars/bootstrap/5.1.3/css/bootstrap.min.css' />
<script type="text/javascript" src="${pageContext.request.getContextPath()}/webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
</body>
</html>