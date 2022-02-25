<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<form:form method="post" action="${flowExecutionUrl}" modelAttribute="user">
    <form:input type="text" path="age" placeholder="age"/><br>
    <form:input type="text" path="mobileNumber" placeholder="mobileNumber"/><br>
    <button type="submit" name="_eventId_register">register</button>
    <button type="submit" name="_eventId_back">back</button>
</form:form>
</body>
</html>