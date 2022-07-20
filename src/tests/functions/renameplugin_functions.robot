*** Variables ***
${website_url}
${plugin_rename}        Change wp-admin login
${botaoplugins}         id:menu-plugins
${botaoadicionar}       xpath://*[@id='menu-plugins']/ul/li[4]   
${boxpesquisar}         class:wp-filter-search    
${instalareativar}      xpath://*[@id="the-list"]//li
${botaoconfiguração}    id:menu-settings
${linkspermanentes}     xpath://*[@id='menu-settings']/ul/li[7]
${mudarurl}             id:rwl-page-input
${botaosalvar}          css:input[value="Salvar alterações"]

*** Keywords ***

Entrar na página de plugins e pesquisar plugin
    Go To                   ${website_url}/plugin-install.php
    Sleep                   10
    Input Text              ${boxpesquisar}           ${plugin_rename}
    Page Should Contain        Instalar Plugins
    
Instalar e ativar plugin Rename
    Sleep                           10
    Click Element                   ${instalareativar}
    Sleep                           10
    Click Element                   ${instalareativar}
    
Configurar Plugin Rename                
    Click Element                   ${botaoconfiguração}
    Sleep                           10
    Click Element                   ${linkspermanentes}
    Sleep                           10
    Page Should Contain             ${plugin_rename}
    Clear Element Text              ${mudarurl}
    Sleep                           5
    Input Text                      ${mudarurl}             controle
    Click Button                    ${botaosalvar}                    
