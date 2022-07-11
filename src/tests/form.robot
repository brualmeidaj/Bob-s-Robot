*** Settings ***
Resource        base.robot

Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variables ***
${erro_no_login}                  1

*** Test Cases ***
Login
    FOR    ${index}    IN RANGE    1    5
        IF    ${erro_no_login} == 0    CONTINUE
        ${erro_no_login}=       Faz Login     %{LOGIN_USER_${index}}     %{LOGIN_PASS_${index}}  
    END
 
*** Keywords ***
Faz Login
    [Arguments]  ${login_user}  ${login_pass}
    Input Text                  id:user_login                   ${login_user}
    Input Text                  id:user_pass                    ${login_pass}
    Click Element               id:wp-submit
    Sleep                       2
    ${erro_no_login}=           Get Element Count              id:login_error     
    RETURN                      ${erro_no_login}