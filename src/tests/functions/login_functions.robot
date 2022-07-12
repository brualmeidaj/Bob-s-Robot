    
*** Keywords ***
Faz Login
    FOR    ${index}    IN RANGE    1    5
        IF    ${erro_no_login} == 0    CONTINUE
        ${erro_no_login}=       Tenta Logar     %{LOGIN_USER_${index}}     %{LOGIN_PASS_${index}}  
    END
    
Tenta Logar
    [Arguments]  ${login_user}  ${login_pass}
    Input Text                  id:user_login                   ${login_user}
    Input Text                  id:user_pass                    ${login_pass}
    Click Element               id:wp-submit
    Sleep                       2
    ${erro_no_login}=           Get Element Count              id:login_error     
    RETURN                      ${erro_no_login}