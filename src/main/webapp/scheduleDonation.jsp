<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Schedule Donation</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <header>
        <h1>Schedule Your Donation</h1>
    </header>
    <main>
        <form action="confirmDonation" method="post">
            <input type="hidden" name="driveId" value="${param.driveId}"/>
            <label for="date">Date:</label>
            <input type="date" id="date" name="date" required><br><br>

            <label for="time">Time:</label>
            <input type="time" id="time" name="time" required><br><br>

            <label for="comments">Comments:</label>
            <textarea id="comments" name="comments"></textarea><br><br>

            <input type="submit" value="Confirm Donation">
        </form>
    </main>
    <footer>
        <p>&copy; 2023 Blood Donation Platform</p>
    </footer>
</body>
</html>