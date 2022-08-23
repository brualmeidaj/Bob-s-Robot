*** Variables ***
${plugin_url_name}                              Plugin Installer from public URL
${plugin_url_seletor_boxpesquisar}              class:wp-filter-search
${plugin_url_seletor_instalar}                  xpath://*[@id="the-list"]//li
${plugin_url_seletor_ativar}                    xpath://*[@id="the-list"]//li


*** Keywords ***
Processa URL
    Plugin URL Upload
    Plugin URL Instalar
    Plugin URL Ativar

Plugin URL Upload
    Go To                   ${website_url}/wp-admin/plugin-install.php
    Sleep                   5
    Input Text              ${plugin_url_seletor_boxpesquisar}           ${plugin_url_name}

Plugin URL Instalar
    Sleep                           10
    Click Element                   ${plugin_url_seletor_instalar}

Plugin URL Ativar
    Sleep                           10
    Click Element                   ${plugin_url_seletor_ativar}