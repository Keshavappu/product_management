  <%@ page isELIgnored="false" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style type="text/css">
/* General body styling */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background: linear-gradient(to bottom right, #007bff, #6610f2);
    color: #fff;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
}

/* Title styling with animation */
h1 {
    font-size: 48px;
    margin-bottom: 40px;
    font-weight: bold;
    color: #ffffff;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4);
    animation: slideIn 1s ease-out; /* Slide-in animation */
}

/* Buttons container */
a {
    text-decoration: none;
}

button {
    background: #28a745;
    color: white;
    border: none;
    padding: 12px 20px;
    font-size: 18px;
    margin: 10px;
    border-radius: 8px;
    cursor: pointer;
    transition: transform 0.3s ease, background-color 0.3s ease; /* Smooth hover effect */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

/* Button hover effect */
button:hover {
    background: #218838;
    transform: translateY(-5px); /* Moves the button slightly upward */
}

/* Animation for title */
@keyframes slideIn {
    0% {
        opacity: 0;
        transform: translateY(-30px);
    }
    100% {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Animation for alert (optional, if you want to add visual effect to alert pop-ups) */
@keyframes fadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}

/* Responsive design for smaller screens */
@media (max-width: 600px) {
    h1 {
        font-size: 36px;
    }

    button {
        font-size: 16px;
        padding: 10px 15px;
    }
}


</style>
</head>
<body>
	<h1>Home Page</h1>
	<a href="addproduct"><button>Add Product</button></a>
		<a href="fetch-products"><button>Fetch Products</button></a>
	<a href="logout"><button>Logout</button></a>

	<c:if test="${message!=null}">
		<script type="text/javascript">
			alert("${message}")
		</script>
	</c:if>
</body>
</html>