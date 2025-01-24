<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Donor Dashboard</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <header>
        <h1>Donor Dashboard</h1>
        <nav>
            <a href="index.jsp">Home</a> | 
            <a href="donationHistory.jsp">View Donation History</a> | 
            <a href="logout.jsp">Logout</a>
        </nav>
    </header>
    <main>
        <h2>Upcoming Blood Drives</h2>
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
                    <td><a href="scheduleDonation.jsp?driveId=${drive.id}">Sign Up</a></td>
                </tr>
            </c:forEach>
        </table>
    </main>
    <footer>
        <p>&copy; 2023 Blood Donation Platform</p>
    </footer>
</body>
</html>