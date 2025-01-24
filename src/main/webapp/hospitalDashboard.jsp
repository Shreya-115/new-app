<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hospital Dashboard</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <header>
        <h1>Hospital Dashboard</h1>
        <nav>
            <a href="index.jsp">Home</a> | 
            <a href="requestBlood.jsp">Request Blood</a> | 
            <a href="manageRequests.jsp">Manage Requests</a> | 
            <a href="logout.jsp">Logout</a>
        </nav>
    </header>
    <main>
        <h2>Your Blood Requests</h2>
        <table>
            <tr>
                <th>Request ID</th>
                <th>Blood Type</th>
                <th>Quantity</th>
                <th>Status</th>
                <th>Date Requested</th>
            </tr>
            <!-- Example of dynamic content -->
            <c:forEach var="request" items="${hospitalRequests}">
                <tr>
                    <td>${request.id}</td>
                    <td>${request.bloodType}</td>
                    <td>${request.quantity}</td>
                    <td>${request.status}</td>
                    <td>${request.dateRequested}</td>
                </tr>
            </c:forEach>
        </table>
    </main>
    <footer>
        <p>&copy; 2023 Blood Donation Platform</p>
    </footer>
</body>
</html>