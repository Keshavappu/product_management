<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
/* General Styles */
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  background: linear-gradient(135deg, #6a11cb, #2575fc);
}

/* Login Form Container */
.login-container {
  background: #ffffff;
  padding: 20px 30px;
  border-radius: 10px;
  box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
  width: 100%;
  max-width: 400px;
}

/* Form Title */
.login-form h2 {
  margin: 0 0 20px;
  font-size: 24px;
  color: #333333;
  text-align: center;
}

/* Input Groups */
.input-group {
  margin-bottom: 15px;
}

.input-group label {
  display: block;
  font-size: 14px;
  color: #555555;
  margin-bottom: 5px;
}

.input-group input {
  width: 100%;
  padding: 10px;
  border: 1px solid #dddddd;
  border-radius: 5px;
  font-size: 14px;
}

.input-group input:focus {
  border-color: #6a11cb;
  outline: none;
}

/* Button */
.actions {
  display: flex;
  justify-content: center;
  align-items: center;
}

.btn {
  background: #6a11cb;
  color: #ffffff;
  padding: 10px 15px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-size: 14px;
}

.btn:hover {
  background: #2575fc;
}

/* Forgot Password */
.forgot-password {
  font-size: 12px;
  color: #6a11cb;
  text-decoration: none;
}

.forgot-password:hover {
  text-decoration: underline;
}

</style>
<body>

<div class="login-container">
    <form class="login-form" action="login" method="post" >
      <h2>Login</h2>
      
      <div class="input-group">
        <label for="username">Username: </label>
        <input type="text" id="username" name="username" placeholder="Enter your username" required>
      </div>
      
      <div class="input-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Enter your password" required>
      </div>
      
      <div class="actions" >
        <button type="submit" class="btn">Login</button>
        
      </div>
    </form><br>
    <div  class="actions" > <a href="register" ><button class="btn">Register</button></a></div>
   
  </div>
 <c:if test="${message!=null}">
		<script type="text/javascript">
			alert("${message}")
		</script>
	</c:if>
</body>
</html>