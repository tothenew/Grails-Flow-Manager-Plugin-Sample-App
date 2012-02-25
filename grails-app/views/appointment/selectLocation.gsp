<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Select Location</title>
</head>

<body>
<g:render template="currentSelection"/>
<g:form name="selectLocation" action="saveSelectLocation">
    <table>
        <tr>
            <td>Location</td>
            <td><g:textField name="location" value="${co.location}"/></td>
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