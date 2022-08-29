*** Variables ***
${plugin_url_name}                              Plugin Installer from public URL
${plugin_url_seletor_boxpesquisar}              class:wp-filter-search
${plugin_url_seletor_instalar}                  xpath://*[@id="the-list"]//li
${plugin_url_seletor_ativar}                    xpath://*[@aria-label='Ativar Plugin Installer from public URL']
${checkurlplugin}                               xpath://*[contains(text(), "Plugin Installer from public URL")]


*** Keywords ***
Processa URL
    Go To               ${website_url}/wp-admin/plugins.php

    ${checkurlplugin}=             Get Element Count               xpath://*[contains(text(), "Plugin Installer from public URL")]

    IF  ${checkurlplugin} == 0
        Plugin URL upload
        Plugin URL Ativar
    END

Plugin URL upload
    Go To                                       ${website_url}/wp-admin/plugin-install.php
    Wait Until Element Is Visible               ${plugin_url_seletor_boxpesquisar}
    Input Text              ${plugin_url_seletor_boxpesquisar}           ${plugin_url_name}
    Wait Until Element Is Visible               ${checkurlplugin}
    Click Element                               ${plugin_url_seletor_instalar}
    Sleep                                       5

Plugin URL Ativar
    Go To                                       ${website_url}/wp-admin/plugins.php
    Wait Until Element Is Visible               ${plugin_url_seletor_ativar}
    Click Element                               ${plugin_url_seletor_ativar}