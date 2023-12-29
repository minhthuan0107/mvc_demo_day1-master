<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <link rel="stylesheet" type="text/css" href='${pageContext.request.getContextPath()}/webjars/bootstrap/5.1.3/css/bootstrap.min.css' />
    <script type="text/javascript" src="${pageContext.request.getContextPath()}/webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    <title>Book management demo</title>
    <link rel="icon" href="https://example.com/path/to/bootstrap-icon.ico" type="image/x-icon">
    <style>
        <%@include file="/resources/css/main.css" %>
    </style>
</head>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">Spring Web MVC demo</a>
            <a class="navbar-brand" href="newBook">Add book</a>
        </div>
    </div>
</nav>