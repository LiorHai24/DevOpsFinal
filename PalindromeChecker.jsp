<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Palindrome Checker Result</title>
</head>
<body>
    <h1>Palindrome Checker Result</h1>
    
    <%
        String inputString = request.getParameter("inputString");
        
        if(inputString != null && !inputString.isEmpty()) {
            String cleanInput = inputString.replaceAll("\\s+", "").toLowerCase();
            
            String reversedString = new StringBuilder(cleanInput).reverse().toString();
            
            boolean isPalindrome = cleanInput.equals(reversedString);
    %>
            <p>
                <%= inputString %> is <%= isPalindrome ? "a" : "not a" %> palindrome.
            </p>
    <%
        } else {
    %>
            <p>
                The input string is invalid.
            </p>
    <%
        }
    %>
    
    <!-- Add a back button to return to the index page -->
    <a href="index.jsp">Back to Home Page</a>
</body>
</html>
