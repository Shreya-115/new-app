<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Request Blood</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <header>
        <h1>Request Blood</h1>
    </header>
    <main>
        <form action="submitBloodRequest" method="post">
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

            <label for="quantity">Quantity:</label>
            <input type="number" id="quantity" name="quantity" required><br><br>

            <label for="urgency">Urgency:</label>
            <select name="urgency" id="urgency" required>
                <option value="normal">Normal</option>
                <option value="urgent">Urgent</option>
            </select><br><br>

            <input type="submit" value="Submit Request">
        </form>
    </main>
    <footer>
        <p>&copy; 2023 Blood Donation Platform</p>
    </footer>
</body>
</html>