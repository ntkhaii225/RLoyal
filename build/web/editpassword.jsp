<%-- 
    Document   : editpassword
    Created on : Jul 12, 2024, 7:34:19 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="./assets/css/editpassword.css" />
    </head>
    <body>
        <h1>PASSWORD</h1>
        <nav><a href="/home">HOME</a> | <a href="/acc">MY ACCOUNT</a></nav>
        <h2>CHANGE PASSWORD</h2>
        <form>
            <input type="hidden" name="id" value="${sessionScope.acc.user_id}${sessionScope.accGoogle.id}">
            <label for="current-password">CURRENT PASSWORD *</label>
            <input type="password" id="current-password" name="current" required />

            <label for="new-password">NEW PASSWORD *</label>
            <input type="password" id="new-password" name="new" required />

            <label for="confirm-password">CONFIRM NEW PASSWORD *</label>
            <input type="password" id="confirm-password" name="confirm" required />
            <a href="/RloyalPRJ/requestPassword" style="text-align: center;
               font-size: 14px;
               color: black">Forget Your Password?</a>

            <div class="buttons">
                <button type="button" class="cancel">CANCEL</button>
                <button type="submit" class="save">SAVE</button>
            </div>
            <p style="color: red">${notify}</p>
        </form>
    </body>