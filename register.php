<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="register.css">
    <title>Scholar Scout - Register</title>
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
                    <td><a href="login.php">Login</a></td>
                </tr>
            </table>
        </header>
    </div>

    <div id="registerbox">

        <h1>CREATE YOUR PROFILE</h1>

        <p class="registerIntro">
            Register with Scholar Scout to discover scholarships
            that match your academic profile and preferences.
        </p>

        <form id="registerForm" name="registerForm"
              action="register.php" method="post">

            <fieldset>

                <h3>ACCOUNT INFORMATION</h3>

                <div class="formRow">
                    <label for="name">Full Name:</label>
                    <input type="text" name="name" id="studentName"
                           placeholder="Enter your full name"
                           maxlength="100" required>
                </div>

                <div class="formRow">
                    <label for="username">Username:</label>
                    <input type="text" name="username" id="username"
                           placeholder="Choose a username"
                           maxlength="30" required>
                </div>

                <div class="formRow">
                    <label for="email">Email:</label>
                    <input type="email" name="email" id="email"
                           placeholder="Enter your email address"
                           maxlength="100" required>
                </div>

                <div class="formRow">
                    <label for="password">Password:</label>
                    <input type="password" name="password" id="password"
                           placeholder="Create a password"
                           minlength="8" required>
                </div>


                <h3>ACADEMIC INFORMATION</h3>

                <div class="formRow">
                    <label for="course">Course:</label>
                    <select name="course" id="course" required>
                        <option value="">Select your course</option>
                        <option value="BTech">B.Tech</option>
                        <option value="BE">B.E.</option>
                        <option value="MBBS">MBBS</option>
                        <option value="BSc">B.Sc.</option>
                        <option value="BCom">B.Com.</option>
                        <option value="BA">B.A.</option>
                        <option value="BCA">BCA</option>
                        <option value="MTech">M.Tech</option>
                        <option value="MSc">M.Sc.</option>
                        <option value="MBA">MBA</option>
                        <option value="Other">Other</option>
                    </select>
                </div>

                <div class="formRow">
                    <label for="academic_level">Academic Level:</label>
                    <select name="academic_level" id="academic_level" required>
                        <option value="">Select academic level</option>
                        <option value="Undergraduate">Undergraduate</option>
                        <option value="Postgraduate">Postgraduate</option>
                        <option value="Doctoral">Doctoral</option>
                        <option value="Other">Other</option>
                    </select>
                </div>

                <div class="formRow">
                    <label for="year_of_study">Year of Study:</label>
                    <select name="year_of_study" id="year_of_study" required>
                        <option value="">Select your year</option>
                        <option value="1">1st Year</option>
                        <option value="2">2nd Year</option>
                        <option value="3">3rd Year</option>
                        <option value="4">4th Year</option>
                        <option value="5">5th Year</option>
                    </select>
                </div>

                <div class="formRow">
                    <label for="marks_type">Academic Score Type:</label>
                    <select name="marks_type" id="marks_type" required>
                        <option value="">Select score type</option>
                        <option value="Percentage">Percentage</option>
                        <option value="CGPA">CGPA</option>
                    </select>
                </div>

                <div class="formRow">
                    <label for="marks">Percentage / CGPA:</label>
                    <input type="number" name="marks" id="marks"
                           placeholder="Enter your score"
                           min="0" step="0.01" required>
                </div>


                <h3>PERSONAL ELIGIBILITY INFORMATION</h3>

                <div class="formRow">
                    <label for="category">Category:</label>
                    <select name="category" id="category" required>
                        <option value="">Select your category</option>
                        <option value="General">General</option>
                        <option value="OBC">OBC</option>
                        <option value="SC">SC</option>
                        <option value="ST">ST</option>
                        <option value="EWS">EWS</option>
                        <option value="Other">Other</option>
                    </select>
                </div>

                <div class="formRow">
                    <label for="gender">Gender:</label>
                    <select name="gender" id="gender" required>
                        <option value="">Select gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                        <option value="Prefer not to say">Prefer not to say</option>
                    </select>
                </div>

                <div class="formRow">
                    <label for="income">Annual Family Income:</label>
                    <select name="income" id="income" required>
                        <option value="">Select income range</option>
                        <option value="0-100000">Below ₹1,00,000</option>
                        <option value="100000-250000">₹1,00,000–₹2,50,000</option>
                        <option value="250000-500000">₹2,50,000–₹5,00,000</option>
                        <option value="500000-800000">₹5,00,000–₹8,00,000</option>
                        <option value="800000-1000000">₹8,00,000–₹10,00,000</option>
                        <option value="1000000+">Above ₹10,00,000</option>
                    </select>
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


                <h3>SCHOLARSHIP PREFERENCES</h3>

                <div class="formRow">
                    <label for="scholarship_type">Scholarship Type:</label>
                    <select name="scholarship_type" id="scholarship_type" required>
                        <option value="">Select scholarship type</option>
                        <option value="Merit-based">Merit-based</option>
                        <option value="Need-based">Need-based</option>
                        <option value="Both">Both</option>
                    </select>
                </div>

                <div class="formRow">
                    <label for="preferred_amount">Preferred Scholarship Amount:</label>
                    <select name="preferred_amount" id="preferred_amount" required>
                        <option value="">Select preferred amount</option>
                        <option value="0-10000">Up to ₹10,000</option>
                        <option value="10000-25000">₹10,000–₹25,000</option>
                        <option value="25000-50000">₹25,000–₹50,000</option>
                        <option value="50000-100000">₹50,000–₹1,00,000</option>
                        <option value="100000+">Above ₹1,00,000</option>
                        <option value="Any">Any amount</option>
                    </select>
                </div>

                <div class="formRow">
                    <label for="preferences">Additional Preferences:</label>
                    <textarea name="preferences" id="preferences"
                              rows="4"
                              placeholder="Mention any additional scholarship preferences (optional)"></textarea>
                </div>

                <div class="registerButton">
                    <button type="submit">Create Profile</button>
                </div>

                <p class="loginLink">
                    Already registered?
                    <a href="login.php">Login here</a>
                </p>

            </fieldset>
        </form>

    </div>

</body>
</html>