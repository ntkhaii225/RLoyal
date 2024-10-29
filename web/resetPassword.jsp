<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <title>Reset Password Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: #f6f5f7;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 
                        0 10px 10px rgba(0, 0, 0, 0.22);
            position: relative;
            overflow: hidden;
            width: 768px;
            max-width: 100%;
            min-height: 480px;
        }

        .form-container form {
            background: #fff;
            display: flex;
            flex-direction: column;
            padding: 0 50px;
            height: 100%;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        .form-container input {
            background: #eee;
            border: none;
            padding: 15px;
            margin: 8px 0;
            width: 100%;
        }

        .form-container button {
            border: none;
            padding: 15px 20px;
            background-color: #ff4b2b;
            color: #fff;
            font-size: 12px;
            font-weight: bold;
            letter-spacing: 1px;
            text-transform: uppercase;
            transition: transform 80ms ease-in;
        }

        .form-container .social-icons {
            margin: 20px 0;
        }

        .form-container .social-icons a {
            border: 1px solid #ddd;
            border-radius: 50%;
            display: inline-flex;
            justify-content: center;
            align-items: center;
            height: 40px;
            width: 40px;
        }

        .form-container span {
            font-size: 14px;
            color: #333;
        }
    </style>
</head>
<body>
    <%@include file="/Home/header.jsp"%>
    <div class="container" id="container">
        <div class="form-container">
            <form action="resetPassword" method="post">
                <h1>Reset Password</h1>
                <div class="social-icons">
<!--                    <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>-->
                </div>
                <span>Enter your new password</span>
                <input type="email" placeholder="Email" name="email" required>
                <input type="password" placeholder="New Password" name="password" required>
                <input type="password" placeholder="Confirm Password" name="confirm_password" required>
                <button>Reset Password</button>
                <p class="text-danger">${mess}</p>
            </form>
        </div>
    </div>
</body>
</html>
