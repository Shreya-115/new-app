<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Blood Donation Platform</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <header>
        <h1>Welcome to the Blood Donation Platform</h1>
        <nav>
            <a href="register.jsp">Register</a> | 
            <a href="login.jsp">Login</a>
        </nav>
    </header>
    <main>
        <h2>Our Services</h2>
        <p>We connect blood donors with hospitals and patients in need. Join us in saving lives!</p>
        <h3>Upcoming Blood Drives</h3>
        <table>
            <tr>
                <th>Date</th>
                <th>Location</th>
                <th>Blood Type Needed</th>
                <th>Action</th>
            </tr>
            <!-- Example of dynamic content -->
            <c:forEach var="drive" items="${upcomingDrives}">
                <tr>
                    <td>${drive.date}</td>
                    <td>${drive.location}</td>
                    <td>${drive.bloodType}</td>
                    <td><a href="donorDashboard.jsp?driveId=${drive.id}">Sign Up</a></td>
                </tr>
            </c:forEach>
        </table>
    </main>
    <footer>
        <p>&copy; 2023 Blood Donation Platform</p>
    </footer>
</body>
</html>