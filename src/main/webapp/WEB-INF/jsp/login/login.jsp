<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<form:form method="post" action="${flowExecutionUrl}" modelAttribute="user">
    <form:input type="text" path="username" placeholder="username"/><br>
    <form:input type="password" path="password" placeholder="password"/><br>
    <button type="submit" name="_eventId_login">login</button>
    <button type="submit" name="_eventId_home">cancel</button>
</form:form>
</body>
</html>