<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Employees</title>
    <style>
           /* General Table Styles */
table {
    width: 100%;
    max-width: 1200px;
    margin: 20px auto;
    border-collapse: collapse;
    table-layout: auto;
    background-color: #fff;
}

/* Table Borders */
table, th, td {
    border: 2px solid #d3cbd3; /* Soft pastel gray border */
}

/* Table Cell Padding and Text Alignment */
th, td {
    padding: 10px;
    text-align: center;
    word-wrap: break-word;
}

/* Table Header (th) Styles */
th {
    background-color: #EF6079FF; /* Soft pastel pink header background */
    color: white;  /* White text for contrast */
}

/* Even Rows Background */
tr:nth-child(even) {
    background-color: #F7CED7FF; /* Light pastel pink */
}

/* Odd Rows Background */
tr:nth-child(odd) {
    background-color: #E6E6FA; /* Light lavender gray */
}

/* Hover Effect for Rows */
tr:hover {
    background-color: #f9e9f9; /* Soft pastel hover effect */
}
           
    </style>
</head>
<body>
<%@include file="adminnavbar.jsp" %>
    <h3 style="text-align: center;"><u>View All Employees</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>DEPARTMENT</th>
            <th>SALARY</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>STATUS</th>
        </tr>
        <c:forEach items="${emplist}" var="emp">
            <tr>
                <td><c:out value="${emp.id}"/></td>
                <td><c:out value="${emp.name}"/></td>
                <td><c:out value="${emp.gender}"/></td>
                <td><c:out value="${emp.dateofbirth}"/></td>
                <td><c:out value="${emp.department}"/></td>
                <td><c:out value="${emp.salary}"/></td>
                <td><c:out value="${emp.location}"/></td>
                <td><c:out value="${emp.email}"/></td>
                <td><c:out value="${emp.contact}"/></td>
                <td><c:out value="${emp.status}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
