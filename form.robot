*** Settings ***
Resource        base.robot
 
Test Setup          Nova sessão
Test Teardown       Encerra sessão


*** Test Cases ***
Login validação
    Go To                       ${url}  
    Maximize Browser Window
    Input Text                  id:user_login              user
    Input Text                  id:user_pass              password
    Click Element               id:wp-submit
 
    ${message}=                 Get WebElement              id:login_error      
    #Page Should Not Countain        ERROR: The username or password you entered is incorrect.
 
#Login
    Input Text                  id:user_login              user1
    Input Text                  id:user_pass              password1
    Click Element               id:wp-submit
 
    ${message}=                 Get WebElement              id:login_error                  
    #Page Should Not Countain        ERROR: The username or password you entered is incorrect.
 
#Login
    Input Text                  id:user_login              user2
    Input Text                  id:user_pass               password2
    Click Element               id:wp-submit
 
    ${message}=                 Get WebElement              id:login_error      
    #Page Should Not Countain        ERROR: The username or password you entered is incorrect.
 
#Login
    Input Text                  id:user_login              user3
    Input Text                  id:user_pass              password3
    Click Element               id:wp-submit
    Page Should Not Countain        ERROR: The username or password you entered is incorrect.
