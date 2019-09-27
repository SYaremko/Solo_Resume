<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="resume" tagdir="/WEB-INF/tags" %>
<html lang="en">
<head>

    <title>Solo_Resume</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%--<link rel="stylesheet" href="/static/css/bootstrap.css">--%>
    <!--<link rel="stylesheet" href="/static/css/bootstrap.css">-->
    <!--<link rel="stylesheet" href="/static/css/bootstrap-theme.css">-->
    <%--<link rel="stylesheet" href="/static/css/all.css">--%>
    <%--<link rel="stylesheet" href="/static/css/fontawesome.css">--%>
    <!--<link rel="stylesheet" href="/static/css/app.css">-->
    <link href="/static/css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="/static/css/style.css">

    <%--<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">--%>
    <%--<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">--%>
    <!--<link rel="stylesheet" href="/static/css/fontawesome.css">-->
    <%--<link rel="stylesheet" href="/static/css/timeline.css">--%>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-4 col-sm-6">
            <resume:profile-main/>
            <resume:profile-language/>
            <resume:profile-hobby/>
            <resume:profile-info/>
        </div>

        <div class="col-md-8 col-sm-6">
            <resume:profile-objective/>
            <resume:profile-skills/>
            <resume:profile-practics/>
            <resume:profile-certificate/>
            <resume:profile-cources/>
            <resume:profile-education/>
        </div>

    </div>


    <%--<script src="/static/js/jquery.js"></script>--%>
    <%--<script src="/static/js/bootstrap.js"></script>--%>
    <%--<script src="/static/js/app.js"></script>--%>
    <%--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"--%>
    <%--integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"--%>
    <%--crossorigin="anonymous"></script>--%>
    <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"--%>
    <%--integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"--%>
    <%--crossorigin="anonymous"></script>--%>
    <%--<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"--%>
    <%--integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"--%>
    <%--crossorigin="anonymous"></script>--%>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <%--<script src="//netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>--%>
</body>
</html>