<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Select AppointmentType</title>
</head>

<body>
<g:render template="currentSelection"/>
<g:form name="selectAppointmentType" action="saveSelectAppointmentType">
    <table>
        <tr>
            <td>Appointment Type</td>
            <td><g:textField name="appointmentType" value="${co.appointmentType}"/></td>
        </tr>

        <tr>
            <td>
                <g:submitButton name="submit" value="back" />
                <g:submitButton name="submit" value="cancel"/>
                <g:submitButton name="submit" value="next"/>
            </td>
        </tr>
    </table>
</g:form>

</body>
</html>