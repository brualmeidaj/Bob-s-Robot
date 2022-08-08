*** Variables ***
${erro_no_login}                    1              
${is_controle}                   0


*** Keywords ***
Acessa Pagina De Login
    Go To                               ${website_url}/wp-login.php
    ${rightlogin}=       Get Element Count               id:login 
       
    IF      ${rightlogin} == 0        
       ${is_controle}         Set Variable        1
       Set Global Variable          ${is_controle}     
       Go To         ${website_url}/controle        
       ${rightlogin}=       Get Element Count               id:login 
    END

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
    ${erro_no_login}=           Get Element Count               id:login_error     
    RETURN                      ${erro_no_login}