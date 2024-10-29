<%-- 
    Document   : editprofile
    Created on : Jul 16, 2024, 9:01:54 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="./assets/css/editprofile.css" />
        <title>Your Personal Information</title>
    </head>
    <body>
        <h1>YOUR PERSONAL INFORMATION</h1>
        <nav><a href="#">HOME</a> | <a href="#">MY ACCOUNT</a></nav>
        <form action="/RloyalPRJ/edit" method="post">
            <div class="form-container">
                <input type="hidden" name="id" value="${sessionScope.acc.user_id}${sessionScope.accGoogle.id}">
                <label for="id">text</label>
                <div class="column">
                    <div class="field">
                        <label for="title">TITLE *</label>
                        <select id="title" required>
                            <option value="Mr.">Mr.</option>
                            <option value="Mr.">Ms.</option>
                            <option value="Mr.">Mrs.</option>
                            <option value="Mr.">Prefer Not to Say</option>
                        </select>
                    </div>
                    <div class="field">
                        <label for="firstname">FIRST NAME *</label>
                        <input type="text" id="firstname" value="Hoang" name="firstname" required />
                    </div>
                    <div class="field">
                        <label for="lastname">LAST NAME *</label>
                        <input type="text" id="lastname" value="Thanh" name="lastname" required />
                    </div>
                    <div class="field">
                        <label for="email">EMAIL ADDRESS *</label>
                        <input
                            type="email"
                            id="email"
                            name="email"
                            value="ringhost42@gmail.com"
                            required
                            />
                    </div>
                    <div class="field">
                        <label for="confirmemail">CONFIRM EMAIL *</label>
                        <input
                            type="email"
                            id="confirmemail"
                            name="confirm_email"
                            value="ringhost42@gmail.com"
                            required
                            />
                    </div>
                    <div class="field">
                        <label for="phone">PHONE</label>
                        <input type="tel" id="phone" name="phone" />
                        <span class="example">EXAMPLE: (0)</span>
                    </div>
                    <!-- <div class="field">
                      <label for="nationality">NATIONALITY</label>
                      <select id="nationality">
                        <option value="Vietnam">Vietnam</option>
                      </select>
                    </div> -->
                    <div>
                        <button type="submit" style="
                                padding: 4px;
                                background-color: black;
                                color: white;
                                ">Confirm</button>
                    </div>
                </div>
                <div class="column">
                    <div class="field shaded">
                        <!-- <div class="field">
                          <label for="country">COUNTRY/REGION *</label>
                          <select id="country" required>
                            <option value="Vietnam">Vietnam</option>
                          </select>
                        </div> -->
                        <div class="field">
                            <label for="state">STATE OR PROVINCE</label>
                            <input type="text" id="state" value="Vietnam" name="state"/>
                        </div>
                        <div class="field">
                            <label for="city">CITY</label>
                            <input type="text" id="city" name="city"/>
                        </div>
                        <div class="field">
                            <label for="zipcode">ZIP CODE</label>
                            <input type="text" id="zipcode" name="zipcode"/>
                            <span class="example">Example: 123456</span>
                        </div>
                        <div class="field">
                            <label>DATE OF BIRTH</label>
                            <div class="date-fields">
                                <input type="number" placeholder="DD" />
                                <input type="number" placeholder="MN" />
                                <input type="number" placeholder="YYYY" />
                            </div>
                        </div>
                    </div>
                </div>
                <p style="color: red">${notify}</p>
            </div>
        </form>
    </body>
</html>
