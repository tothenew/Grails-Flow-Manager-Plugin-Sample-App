<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Appointment created</title>
</head>

<body>

<strong>Appointment created successfully</strong>
<g:if test="${flash.message}">
    <div>
        ${flash.message}
    </div>
</g:if>
</body>
</html>