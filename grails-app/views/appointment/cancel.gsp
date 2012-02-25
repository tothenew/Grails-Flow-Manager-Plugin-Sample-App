<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Appointment creation cancelled</title>
</head>

<body>

<strong>Appointment creation cancelled successfully</strong>
<g:if test="${flash.message}">
    <div>
        ${flash.message}
    </div>
</g:if>

<g:link action="index">Create Appointment</g:link>
</body>
</html>