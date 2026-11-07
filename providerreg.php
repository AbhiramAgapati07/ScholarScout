<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="register.css">
    <title>Scholar Scout - Provider Register</title>
</head>

<body>

    <div id="head">
        <header>
            <a class="logo" href="index.php">
                <img src="sclogo.png" alt="logo">
                <span id="name">SCHOLAR SCOUT</span>
            </a>

            <table class="navTable" cellpadding="4" cellspacing="0" border="0">
                <tr>
                    <td><a href="register.php">Register</a></td>
                    <td>|</td>
                    <td><a href="homepage1.html">About Us</a></td>
                    <td>|</td>
                    <td><a href="providerlogin.php">Login</a></td>
                </tr>
            </table>
        </header>
    </div>

    <div id="registerbox">

        <div class="topSwitch">
            <a href="register.php" class="switchBtn">&larr; Go back</a>
        </div>

        <h1>SCHOLARSHIP PROVIDER REGISTRATION</h1>

        <p class="registerIntro">
            Register your organization with Scholar Scout to publish scholarship programs,
            support aspiring students, and manage applications.
        </p>

        <form id="providerRegisterForm" name="providerRegisterForm"
              action="register_provider.php" method="post">

            <fieldset>

                <h3>ORGANIZATION DETAILS</h3>

                <div class="formRow">
                    <label for="org_name">Organization / Provider Name:</label>
                    <input type="text" name="org_name" id="org_name"
                           placeholder="Enter organization or provider name"
                           maxlength="150" required>
                </div>

                <div class="formRow">
                    <label for="org_type">Organization Type:</label>
                    <select name="org_type" id="org_type" required>
                        <option value="">Select organization type</option>
                        <option value="Trust / NGO">Trust / NGO</option>
                        <option value="Corporate / CSR">Corporate / CSR Foundation</option>
                        <option value="Educational Institution">Educational Institution / University</option>
                        <option value="Government Body">Government Body</option>
                        <option value="Private Philanthropist">Private Philanthropist</option>
                        <option value="Other">Other</option>
                    </select>
                </div>

                <div class="formRow">
                    <label for="reg_number">Registration / License ID:</label>
                    <input type="text" name="reg_number" id="reg_number"
                           placeholder="Enter registration / trust / CIN number"
                           maxlength="50" required>
                </div>

                <div class="formRow">
                    <label for="website">Official Website:</label>
                    <input type="url" name="website" id="website"
                           placeholder="https://www.example.org">
                </div>

                <div class="formRow">
                    <label for="org_email">Official Email Address:</label>
                    <input type="email" name="org_email" id="org_email"
                           placeholder="Enter official email"
                           maxlength="100" required>
                </div>

                <div class="formRow">
                    <label for="contact_phone">Contact Phone Number:</label>
                    <input type="tel" name="contact_phone" id="contact_phone"
                           placeholder="Enter 10-digit phone number"
                           pattern="[0-9]{10}" maxlength="15" required>
                </div>

                <div class="formRow">
                    <label for="address">Head Office Address:</label>
                    <textarea name="address" id="address"
                              rows="3"
                              placeholder="Enter official head office address" required></textarea>
                </div>

                <div class="formRow">
                    <label for="state">State / Region:</label>
                    <select name="state" id="state" required>
                        <option value="">Select your state</option>
                        <option value="Andhra Pradesh">Andhra Pradesh</option>
                        <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                        <option value="Assam">Assam</option>
                        <option value="Bihar">Bihar</option>
                        <option value="Chhattisgarh">Chhattisgarh</option>
                        <option value="Goa">Goa</option>
                        <option value="Gujarat">Gujarat</option>
                        <option value="Haryana">Haryana</option>
                        <option value="Himachal Pradesh">Himachal Pradesh</option>
                        <option value="Jharkhand">Jharkhand</option>
                        <option value="Karnataka">Karnataka</option>
                        <option value="Kerala">Kerala</option>
                        <option value="Madhya Pradesh">Madhya Pradesh</option>
                        <option value="Maharashtra">Maharashtra</option>
                        <option value="Manipur">Manipur</option>
                        <option value="Meghalaya">Meghalaya</option>
                        <option value="Mizoram">Mizoram</option>
                        <option value="Nagaland">Nagaland</option>
                        <option value="Odisha">Odisha</option>
                        <option value="Punjab">Punjab</option>
                        <option value="Rajasthan">Rajasthan</option>
                        <option value="Sikkim">Sikkim</option>
                        <option value="Tamil Nadu">Tamil Nadu</option>
                        <option value="Telangana">Telangana</option>
                        <option value="Tripura">Tripura</option>
                        <option value="Uttar Pradesh">Uttar Pradesh</option>
                        <option value="Uttarakhand">Uttarakhand</option>
                        <option value="West Bengal">West Bengal</option>
                        <option value="Other">Other / Union Territory</option>
                    </select>
                </div>


                <h3>REPRESENTATIVE & ACCOUNT CREDENTIALS</h3>

                <div class="formRow">
                    <label for="contact_person">Contact Person Name:</label>
                    <input type="text" name="contact_person" id="contact_person"
                           placeholder="Enter representative's full name"
                           maxlength="100" required>
                </div>

                <div class="formRow">
                    <label for="designation">Designation / Role:</label>
                    <input type="text" name="designation" id="designation"
                           placeholder="e.g. CSR Director, Scholarship Manager"
                           maxlength="80" required>
                </div>

                <div class="formRow">
                    <label for="username">Username:</label>
                    <input type="text" name="username" id="username"
                           placeholder="Choose a username"
                           maxlength="30" required>
                </div>

                <div class="formRow">
                    <label for="password">Password:</label>
                    <input type="password" name="password" id="password"
                           placeholder="Create a password"
                           minlength="8" required>
                </div>


                <div class="registerButton">
                    <button type="submit">Register as Provider</button>
                </div>

                <p class="loginLink">
                    Already registered?
                    <a href="login.html">Login here</a>
                </p>

            </fieldset>
        </form>

    </div>

</body>
</html>

