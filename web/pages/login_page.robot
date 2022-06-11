**Variables**
${username}  id=user-name
${password}  id=password
${login_button}  id=login-button

**Keywords**
Check Point Login Page
    Wait For Elements State  ${login_button}  visible  timeout=${DEFAULT_TIMEOUT}  message=This is not the login page

Login Soucedemo E-Commerce
    [Arguments]  ${user}  ${pass}
    Fill Input Text  ${username}  ${user}
    Fill Input Text  ${password}  ${pass}
    Click On Element  ${login_button}


