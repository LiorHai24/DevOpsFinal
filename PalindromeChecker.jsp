<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Palindrome Checker</title>
</head>
<body>
    <h1>Palindrome Checker</h1>
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
        }
    %>
</body>
</html>
