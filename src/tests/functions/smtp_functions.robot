*** Variables ***
${website_url}
${FILE}                     C:\\Users\\Bruna Almeida\\cimy_swift_smtp.zip
${upload}                   css:input[name="pluginzip"]

*** Keywords ***
Processa SMTP
    Entrar na página de plugins e fazer upload

Entrar na página de plugins e fazer upload 
    Go To                                   ${website_url}/wp-admin/plugin-install.php
    Sleep                                   2
    Go To                                   ${website_url}/wp-admin/plugin-install.php?tab=upload
    Sleep                                   2
    Choose File             ${upload}           ${FILE}
    Sleep                   2
    Click Button            id:install-plugin-submit
    
   
