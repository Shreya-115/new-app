<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Manage Requests</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <header>
        <h1>Manage Your Blood Requests</h1>
        <nav>
            <a href="hospitalDashboard.jsp">Back to Dashboard</a> | 
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
                <th>Action</th>
            </tr>
            <!-- Example of dynamic content -->
            <c:forEach var="request" items="${hospitalRequests}">
                <tr>
                    <td>${request.id}</td>
                    <td>${request.bloodType}</td>
                    <td>${request.quantity}</td>
                    <td>${request.status}</td>
                    <td>${request.dateRequested}</td>
                    <td>
                        <form action="updateRequest" method="post" style="display:inline;">
                            <input type="hidden" name="requestId" value="${request.id}"/>
                            <input type="submit" value="Update" />
                        </form>
                        <form action="deleteRequest" method="post" style="display:inline;">
                            <input type="hidden" name="requestId" value="${request.id}"/>
                            <input type="submit" value="Delete" onclick="return confirm('Are you sure you want to delete this request?');" />
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </main>
    <footer>
        <p>&copy; 2023 Blood Donation Platform</p>
    </footer>
</body>
</html>