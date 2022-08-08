*** Variables ***
${website_url}
${plugin_rename}        Change wp-admin login
${botaoplugins}         id:menu-plugins
${botaoadicionar}       xpath://*[@id='menu-plugins']/ul/li[4]   
${boxpesquisar}         class:wp-filter-search    
${instalareativar}      xpath://*[@id="the-list"]//li
${mudarurl}             id:rwl-page-input
${botaosalvar}          css:input[value="Salvar alterações"]

*** Keywords ***
Processa WpRename
    IF      ${is_controle} == 0 
       Pesquisa Wp Rename
       Instalar e ativar plugin Rename
       Configurar Plugin Rename 
    END


Pesquisa Wp Rename
    Go To                   ${website_url}/wp-admin/plugin-install.php
    Sleep                   15
    Input Text              ${boxpesquisar}           ${plugin_rename}
    
Instalar e ativar plugin Rename
    Sleep                           10
    Click Element                   ${instalareativar}
    Sleep                           10
    Click Element                   ${instalareativar}
    
Configurar Plugin Rename                
    Go To                           ${website_url}/wp-admin/options-permalink.php
    Sleep                           5
    Page Should Contain             ${plugin_rename}
    Clear Element Text              ${mudarurl}
    Sleep                           5
    Input Text                      ${mudarurl}             controle
    Click Button                    ${botaosalvar}                    
