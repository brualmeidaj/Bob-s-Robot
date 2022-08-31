*** Variables ***
${boxpesquisar}                 class:wp-filter-search
${plugin_404}                   404 to 301 – Redirect, Log and Notify 404 Errors
${instalareativar404}           xpath://*[@data-slug='404-to-301']
${pagepluginscheck}             ${website_url}/wp-admin/plugins.php

*** Keywords ***
Processa 404

    Go To               ${pagepluginscheck}
    ${404check}=             Get Element Count               xpath://*[contains(text(), "404 to 301 - Redirect, Log and Notify 404 Errors")]

    IF  ${404check} == 0
        Entrar na página de plugins e pesquisar plugin 404
    END


Entrar na página de plugins e pesquisar plugin 404
    Go To                                               ${website_url}/wp-admin/plugin-install.php
    Wait Until Element Is Visible                       ${boxpesquisar}      
    Input Text              ${boxpesquisar}             ${plugin_404}
    Sleep                                               7
    Click Element                                       ${instalareativar404}
    Sleep                                               7
    Click Element                                       ${instalareativar404}

   
    
