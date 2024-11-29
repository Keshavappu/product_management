<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
<style >

/* General body styling */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f5f5f5;
    color: #333;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Form container */
div {
    background-color: #ffffff;
    padding: 30px 40px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    text-align: center;
    max-width: 400px;
    width: 90%;
    animation: fadeIn 1.2s ease-out; /* Animation for form appearance */
}

/* Heading style */
h1 {
    color: #0056b3;
    font-size: 24px;
    margin-bottom: 20px;
    font-weight: bold;
}

/* Input fields */
input[type="text"] {
    width: 90%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
    box-sizing: border-box;
    transition: border 0.3s, transform 0.3s; /* Smooth transition for focus effect */
}

/* Input focus effect */
input[type="text"]:focus {
    border-color: #007bff;
    outline: none;
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
    transform: scale(1.02); /* Slightly enlarges on focus */
}

/* Buttons */
button {
    padding: 10px 20px;
    font-size: 16px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin: 10px 5px;
    transition: background-color 0.3s ease, transform 0.3s ease; /* Button hover animation */
}

/* Add button */
button[type="submit"], button {
    background-color: #28a745;
    color: #fff;
}

button[type="submit"]:hover, button:hover {
    background-color: #218838;
    transform: translateY(-3px); /* Moves up slightly on hover */
}

/* Back button */
a button {
    background-color: #6c757d;
    color: #fff;
    text-decoration: none;
}

a button:hover {
    background-color: #5a6268;
    transform: translateY(-3px); /* Moves up slightly on hover */
}

/* Adjust spacing between elements */
form input {
    margin-bottom: 15px;
}

/* Animation for form appearance */
@keyframes fadeIn {
    0% {
        opacity: 0;
        transform: translateY(-20px);
    }
    100% {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Responsive design */
@media (max-width: 600px) {
    div {
        padding: 20px;
    }

    h1 {
        font-size: 20px;
    }

    input[type="text"] {
        width: 100%;
    }

    button {
        width: 100%;
        margin-bottom: 10px;
    }
}

</style>
</head>
<body>
<div align="center"> 
	<h1>Update Product</h1>
	<form action="edit" method="post">
	<input type="hidden" name="id" value="${p.id}">
		Product Name: <input type="text" name="name" value="${p.name}"><br><br>
		Product Description: <input type="text" name="description"  value="${p.description}"><br><br>
		Product Image Link: <input type="text" name="imageLink" value="${p.imageLink}"><br><br>
		Product Price: <input type="text" name="price" value="${p.price}"><br><br>
		Product Category: <input type="text" name="category" value="${p.category}"><br><br>
		<button>Edit</button>
	</form><br>
	
	<a href="home"><button>Back</button></a>
</div>
</body>
</html>