<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Select Adviser</title>
</head>

<body>
<g:render template="currentSelection"/>
<g:form name="selectAdviser" action="saveSelectAdviser">
    <table>
        <tr>
            <td>Adviser</td>
            <td><g:textField name="adviser" value="${co.adviser}"/></td>
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