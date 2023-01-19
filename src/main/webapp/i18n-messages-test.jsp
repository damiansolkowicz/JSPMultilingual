<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="theLocale"
       value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}"
       scope="session" />
<fmt:setLocale value="${theLocale}" />
<fmt:setBundle basename="com.lobetcode.jsp.resources.mylabels" />
<html>
<body>
<a href="i18n-messages-test.jsp?theLocale=en_US">English (US)</a>
<a href="i18n-messages-test.jsp?theLocale=pl_PL">Polish</a>
<a href="i18n-messages-test.jsp?theLocale=de_DE">German (DE)</a>

<hr>
<fmt:message key="label.firstname" /> <i>John</i> <br/>
<fmt:message key="label.lastname" /> <i>Doe</i> <br/><br/>
<hr>

Selected locale: ${theLocale}

</body>

</html>
