<g:if test="${co.appointmentType|| co.student || co.adviser || co.location}">
    <table>
        <tr>
            <td colspan="2">Your current selection</td>
        </tr>

        <g:if test="${co.appointmentType}">
            <tr>
                <td>Appointment Type</td>
                <td><g:textField name="appointmentType" value="${co.appointmentType}" readonly="true"/></td>
                <td><g:link controller="appointment" action="selectAppointmentType">Change</g:link></td>
            </tr>
        </g:if>

        <g:if test="${co.student}">
            <tr>
                <td>Student</td>
                <td><g:textField name="student" value="${co.student}" readonly="true"/></td>
                <td><g:link controller="appointment" action="selectStudent">Change</g:link></td>
            </tr>
        </g:if>

        <g:if test="${co.adviser}">
            <tr>
                <td>Adviser</td>
                <td><g:textField name="adviser" value="${co.adviser}" readonly="true"/></td>
                <td><g:link controller="appointment" action="selectAdviser">Change</g:link></td>
            </tr>
        </g:if>

        <g:if test="${co.location}">
            <tr>
                <td>Location</td>
                <td><g:textField name="adviser" value="${co.location}" readonly="true"/></td>
                <td><g:link controller="appointment" action="selectLocation">Change</g:link></td>
            </tr>
        </g:if>
    </table>
</g:if>