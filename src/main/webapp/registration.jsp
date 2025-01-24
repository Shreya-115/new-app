<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <header>
        <h1>Register as a Donor or Hospital</h1>
    </header>
    <main>
        <form action="registerUser " method="post">
            <label for="userType">User  Type:</label>
            <select name="userType" id="userType" required>
                <option value="donor">Donor</option>
                <option value="hospital">Hospital</option>
            </select><br><br>

            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br><br>

            <label for="bloodType">Blood Type:</label>
            <select name="bloodType" id="bloodType" required>
                <option value="A+">A+</option>
                <option value="A-">A-</option>
                <option value="B+">B+</option>
                <option value="B-">B-</option>
                <option value="O+">O+</option>
                <option value="O-">O-</option>
                <option value="AB+">AB+</option>
                <option value="AB-">AB-</option>
            </select><br><br>

            <label for="contact">Contact Information:</label>
            <input type="text" id="contact" name="contact" required><br><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br><br>

            <input type="submit" value="Register">
        </form>
    </main>
    <footer>
        <p>&copy; 2023 Blood Donation Platform</p>
    </footer>
</body>
</html>