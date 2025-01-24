<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Donation History</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <header>
        <h1>Your Donation History</h1>
        <nav>
            <a href="donorDashboard.jsp">Back to Dashboard</a> | 
            <a href="logout.jsp">Logout</a>
        </nav>
    </header>
    <main>
        <table>
            <tr>
                <th>Date</th>
                <th>Location</th>
                <th>Blood Type Donated</th>
                <th>Comments</th>
            </tr>
            <!-- Example of dynamic content -->
            <c:forEach var="donation" items="${donationHistory}">
                <tr>
                    <td>${donation.date}</td>
                    <td>${donation.location}</td>
                    <td>${donation.bloodType}</td>
                    <td>${donation.comments}</td>
                </tr>
            </c:forEach>
        </table>
    </main>
    <footer>
        <p>&copy; 2023 Blood Donation Platform</p>
    </footer>
</body>
</html>