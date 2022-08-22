*** Variables ***
${website_url}
${website_nome}
%{LOGIN_USER_CIMY}
${FILE}                     C:\\Users\\Bruna Almeida\\cimy_swift_smtp.zip
${upload}                   css:input[name="pluginzip"]
${button_ativar}            xpath://*[@id="wpbody-content"]//div[3]/p[4]/a[1]
${configurarcimy}           ${website_url}/wp-admin/options-general.php?page=swift_smtp
${emailcimy}                form@servermail.srv.br



*** Keywords ***
Processa SMTP
    Entrar na página de plugins e fazer upload

Entrar na página de plugins e fazer upload 
    Go To                                   ${website_url}/wp-admin/plugin-install.php?tab=upload
    Sleep                                   2
    Choose File             ${upload}           ${FILE}
    Sleep                   5
    Click Button            id:install-plugin-submit
    Sleep                   10
    Click Button            ${button_ativar}
    Go To                   ${configurarcimy}
Configuração CIMY   
    Go To                   ${configurarcimy}
    Input Text              id:css_sender_name              ${website_nome}
    Input Text              id:css_sender_mail              ${emailcimy}
    Select Radio Button         id:css_sender_overwrite_always
    Input Text                  id:css_server               smtp.emailemnuvem.com.br
    Click Element               id:css_port
    Select From List By Value               xpath://*[@id="css_port"]//option[2]
    Input Text                  id:css_username             ${emailcimy}
    Input Text                  id:css_password             %{LOGIN_USER_CIMY}
    Click Element               id:css_ssl                  
    Select From List By Value               xpath://*[@id="css_ssl"]//option[2]

