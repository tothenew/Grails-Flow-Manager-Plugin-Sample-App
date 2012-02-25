<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Select Student</title>
</head>

<body>
<g:render template="currentSelection"/>
<g:form name="selectStudent" action="saveSelectStudent">
    <table>
        <tr>
            <td>Student</td>
            <td><g:textField name="student" value="${co.student}"/></td>
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