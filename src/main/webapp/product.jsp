<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Products</title>
    <style type="text/css">
    /* General body styling */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background: linear-gradient(to bottom right, #f5f7fa, #c3cfe2);
    color: #333;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    min-height: 100vh;
}

/* Title styling */
h1 {
    font-size: 48px;
    color: #0056b3;
    margin-bottom: 20px;
    text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.3);
    animation: fadeIn 1s ease-in;
}

/* Container for products */
.container {
    width: 90%;
    max-width: 1200px;
    margin: auto;
    text-align: center;
}

/* Product grid styling */
.product-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 20px;
    margin: 20px 0;
}

/* Individual product card styling */
.product-card {
    background: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    padding: 20px;
    text-align: center;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.product-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
}

/* Product image */
.product-card img {
    width: 100%;
    height: 200px;
    object-fit: cover;
    border-radius: 8px;
}

/* Product name */
.product-card h2 {
    font-size: 20px;
    color: #333;
    margin: 15px 0;
}

/* Product description */
.product-card p {
    font-size: 14px;
    color: #666;
    margin: 5px 0;
}

.price {
    font-size: 18px;
    color: #28a745;
    font-weight: bold;
    margin-top: 10px;
}

.category {
    font-size: 14px;
    color: #6c757d;
}

/* Card actions (buttons) */
.card-actions {
    margin-top: 15px;
}

.card-actions a {
    text-decoration: none;
}

button {
    padding: 8px 16px;
    font-size: 14px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: all 0.3s ease;
}

.edit-btn {
    background-color: #007bff;
    color: white;
}

.edit-btn:hover {
    background-color: #0056b3;
}

.delete-btn {
    background-color: #dc3545;
    color: white;
}

.delete-btn:hover {
    background-color: #a71d2a;
}

/* Back button */
.back-btn {
    margin-top: 20px;
    background-color: #6c757d;
    color: white;
    padding: 10px 20px;
    font-size: 16px;
}

.back-btn:hover {
    background-color: #5a6268;
}

/* Fade-in animation */
@keyframes fadeIn {
    0% {
        opacity: 0;
        transform: translateY(-10px);
    }
    100% {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Responsive Design */
@media (max-width: 768px) {
    h1 {
        font-size: 36px;
    }

    .product-card img {
        height: 150px;
    }

    button {
        font-size: 12px;
    }
}
    
    </style>
</head>
<body>
    <div class="container">
        <h1>Products</h1>
        <div class="product-grid">
            <c:forEach var="p" items="${products}">
                <div class="product-card">
                    <img src="${p.imageLink}" alt="${p.name}" />
                    <h2>${p.name}</h2>
                    <p>${p.description}</p>
                    <p class="price">$${p.price}</p>
                    <p class="category">Category: ${p.category}</p>
                    <div class="card-actions">
                        <a href="edit?id=${p.id}"><button class="edit-btn">Edit</button></a>
                        <a href="delete?id=${p.id}" method="POST"><button class="delete-btn">Delete</button></a>
                    </div>
                </div>
            </c:forEach>
        </div>
        <a href="home"><button class="back-btn">Back</button></a>
    </div>

    <c:if test="${message!=null}">
        <script type="text/javascript">
            alert("${message}");
        </script>
    </c:if>
</body>
</html>
