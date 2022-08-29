*** Variables ***
${boxpesquisar}             class:wp-filter-search
${plugin_404}               404 to 301 – Redirect, Log and Notify 404 Errors
${instalareativar}          xpath://*[@id="the-list"]//li
${pagepluginscheck}         ${website_url}/wp-admin/plugins.php
${install404}               xpath://*[contains(text(), "404 to 301 – Redirect, Log and Notify 404 Errors")]
${check404}                 xpath://*[contains(text(), "404 to 301 - Redirect, Log and Notify 404 Errors")]
${ativar404}                xpath://*[@aria-label='Ativar 404 to 301 - Redirect, Log and Notify 404 Errors']

*** Keywords ***
Processa 404

    Go To               ${pagepluginscheck}
    ${404check}=             Get Element Count               xpath://*[contains(text(), "404 to 301 - Redirect, Log and Notify 404 Errors")]

    IF  ${404check} == 0
        Entrar na página de plugins e pesquisar plugin 404
        Instalar e ativar o plugin 404
    END


Entrar na página de plugins e pesquisar plugin 404
    Go To                                               ${website_url}/wp-admin/plugin-install.php
    Wait Until Element Is Visible                       ${boxpesquisar}      
    Input Text              ${boxpesquisar}             ${plugin_404}
    Wait Until Element Is Visible                       ${install404}
Instalar e ativar o plugin 404
    Click Element                               ${instalareativar}
    Sleep                                       5
    Go To                                       ${pagepluginscheck}
    Wait Until Element Is Visible               ${check404}
    Click Element                               ${ativar404}
   
    
