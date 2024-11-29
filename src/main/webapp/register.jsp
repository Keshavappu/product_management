<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style >
/* General Styles */
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  background: linear-gradient(135deg, #00c6ff, #0072ff);
}

/* Register Form Container */
.register-container {
  background: #ffffff;
  padding: 20px 30px;
  border-radius: 10px;
  box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
  width: 100%;
  max-width: 400px;
}

/* Form Title */
.register-form h2 {
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
  border-color: #0072ff;
  outline: none;
}

/* Button */
.actions {
  text-align: center;
}

.btn {
  background: #0072ff;
  color: #ffffff;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-size: 14px;
}

.btn:hover {
  background: #005bb5;
}

</style>
</head>
<body>
<div class="register-container">
    <form class="register-form" action="register" method="post">
      <h2>Register</h2>
      
      <div class="input-group">
        <label for="name">Full Name</label>
        <input type="text" id="name" name="name" placeholder="Enter your full name" required>
      </div>
      
      <div class="input-group">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" placeholder="Choose a username" required>
      </div>
      
      <div class="input-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" placeholder="Create a password" required>
      </div>
      
      <div class="input-group">
        <label for="confirm-password">Confirm Password</label>
        <input type="password" id="confirm-password" name="cpassword" placeholder="Confirm your password" required>
      </div>
      
      <div class="actions">
        <button type="submit" class="btn">Register</button>
      </div>
    </form><br>
    <div class="actions">  <a href="login" ><button class="btn">Login</button></a></div>
  
  </div>
  <c:if test="${message!=null}">
		<script type="text/javascript">
			alert("${message}")
		</script>
	</c:if>
</body>
</html>