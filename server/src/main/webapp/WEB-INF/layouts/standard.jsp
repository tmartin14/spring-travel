<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head> 
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	
	<title>New Relic Travel: Spring MVC and Web Flow Reference Application</title>
	
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
	<link rel="icon" href="/favicon.ico" type="image/x-icon">

	<link type="text/css" rel="stylesheet" href="<c:url value="/resources/javascript/dijit/themes/tundra/tundra.css" />" />
	<link rel="stylesheet" href="<c:url value="/resources/styles/blueprint/screen.css" />" type="text/css" media="screen, projection" />
	<link rel="stylesheet" href="<c:url value="/resources/styles/blueprint/print.css" />" type="text/css" media="print" />
	<!--[if lt IE 8]>
	        <link rel="stylesheet" href="<c:url value="/resources/blueprint/ie.css" />" type="text/css" media="screen, projection" />
	<![endif]-->
	<link rel="stylesheet" href="<c:url value="/resources/styles/travel.css" />" type="text/css" media="screen" />
    <script type="text/javascript" src="<c:url value="/resources/javascript/dojo/dojo.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/javascript/spring/Spring.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/javascript/spring/Spring-Dojo.js" />"></script>
    <script type="text/javascript" >
    	if(navigator.appVersion.indexOf('Chrome') > 0 ) 
            throw new Error("You're using Chrome!")
    	else
        	throw new Error("Hey!  Why aren't you using Chrome?")
        // Just throwing an error for any browser except Chrome
    </script>
</head>
<body class="tundra">
<div id="page" class="container">
	<div id="header">
		<div id="topbar">
			<p>
				<security:authorize ifAllGranted="ROLE_USER">
					<c:if test="${pageContext.request.userPrincipal != null}">
						Welcome, ${pageContext.request.userPrincipal.name} |
					</c:if>
					<a href="<c:url value="/users/logout" />">Logout</a>
				</security:authorize>
				<security:authorize ifAllGranted="ROLE_ANONYMOUS">
					<a href="<c:url value="/users/login" />">Login</a>
				</security:authorize>
			</p>
		</div>
		<div id="logo">
			<p>
				<a href="<c:url value="/" />">
					<img src="<c:url value="/resources/images/header.jpg"/>" alt="Spring Travel" />
				</a>
			</p>
		</div>
	</div>
	<div id="content">
		<div id="local" class="span-6">
			<p>
				<a href="/">
					<img src="<c:url value="/resources/images/diplomat.jpg"/>" alt="generic hotel" />
				</a>
			</p>
			<p><br/><br/>
			<a href="https://rpm.newrelic.com/accounts/671602/applications/5090681" target="_blank">
			      <img src="<c:url value="/resources/images/NewRelic1.png"/>" height="48" alt="New Relic" />
		    </a>  
		   </p>
		</div>
		<div id="main" class="span-18 last">
			<tiles:insertAttribute name="body" />
		</div>
	</div>
	<hr />
	<div id="footer">
		<div class="span-4">
				<a href="http://rpm.newrelic.com">Monitoring provided by:
				<br /> 
					<img src="<c:url value="/resources/images/NewRelic1.png"/>"
					alt="New Relic" height="35" width="120" />
					</a>
			</div>

		<a href="http://www.springframework.org">
			<img src="<c:url value="/resources/images/powered-by-spring.png"/>" alt="Powered by Spring" />
		</a>

	</div>
</div>
</body>
</html>