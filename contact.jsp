<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact Us</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    
    <div class="header">
        <h1>PANCA WATCH</h1>
    </div>
     <div class="navbar">
        <a href="home">Home</a>
        <a href="product">Products</a>
        <a href="contact">Contact Us</a>
    </div>
    <div class="content contact-form-container">
        <!-- Error and Response Messages -->
        <div class="message-error">
            <%= request.getAttribute("error") != null ? request.getAttribute("error") : "" %>
        </div>

        <div class="message-success">
            <%= request.getAttribute("responseMessage") != null ? request.getAttribute("responseMessage") : "" %>
        </div>

        <!-- Contact Form -->
        <form action="contact" method="post" class="contact-form">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>

            <div class="form-group">
                <label for="message">Message:</label>
                <textarea id="message" name="message" required></textarea>
            </div>

            <div class="form-group">
                <input type="submit" value="Send" class="btn">
            </div>
        </form>

        
    </div>
        <div class="footer">
        <p>&copy; 2024 PANCA WATCH. All Rights Reserved.</p>
        <p><a href="product">View Products</a> | <a href="contact">Contact Us</a></p>
    </div>
</body>
</html>
