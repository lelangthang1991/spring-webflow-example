<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
Successfully logged in ! Hello ${user.username}<br>
<a href="${pageContext.request.contextPath}/">home</a>
</body>
</html>