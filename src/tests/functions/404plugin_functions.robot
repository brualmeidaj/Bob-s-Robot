*** Variables ***
${website_url}
${boxpesquisar}         class:wp-filter-search
${plugin_404}           404 to 301 – Redirect, Log and Notify 404 Errors
${instalareativar}      xpath://*[@id="the-list"]//li

*** Keywords ***
Processa 404
    Entrar na página de plugins e pesquisar plugin 404
    Instalar e ativar o plugin 404

Entrar na página de plugins e pesquisar plugin 404
    Sleep                   15
    Go To                   ${website_url}/wp-admin/plugin-install.php
    Sleep                   15
    Input Text              ${boxpesquisar}           ${plugin_404}
    Sleep                   15
Instalar e ativar o plugin 404
    Click Element           ${instalareativar}
    Sleep                   15
    Click Element           ${instalareativar}
    
