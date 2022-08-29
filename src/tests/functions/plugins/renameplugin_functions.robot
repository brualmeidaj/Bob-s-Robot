*** Variables ***
${plugin_rename}        Change wp-admin login
${renamecheck}          xpath://*[contains(text(), "Change wp-admin login")]
${botaoplugins}         id:menu-plugins
${botaoadicionar}       xpath://*[@id='menu-plugins']/ul/li[4]   
${boxpesquisar}         class:wp-filter-search    
${instalareativar}      xpath://*[@id="the-list"]//li
${mudarurl}             id:rwl-page-input
${botaosalvar}          css:input[value="Salvar alterações"]
${ativarrename}         xpath://*[@aria-label='Ativar Change wp-admin login']

*** Keywords ***
Processa WpRename
    IF      ${is_controle} == 0 
       Pesquisa Wp Rename
       Instalar e ativar plugin Rename
       Configurar Plugin Rename 
    END


Pesquisa Wp Rename
    Go To                                               ${website_url}/wp-admin/plugin-install.php
    Wait Until Element Is Visible                       ${boxpesquisar}
    Input Text              ${boxpesquisar}             ${plugin_rename}
    
Instalar e ativar plugin Rename
    Wait Until Element Is Visible                       ${renamecheck}
    Click Element                                       ${instalareativar}
    Sleep                                               5
    Go To                                               ${website_url}/wp-admin/plugins.php
    Wait Until Element Is Visible                       ${renamecheck}
    Click Element                                       ${ativarrename}
    
Configurar Plugin Rename                
    Go To                           ${website_url}/wp-admin/options-permalink.php
    Sleep                           5
    Mouse Down                      ${mudarurl}                          
    Clear Element Text              ${mudarurl}
    Sleep                           5
    Input Text                      ${mudarurl}             controle
    Click Button                    ${botaosalvar}                    
