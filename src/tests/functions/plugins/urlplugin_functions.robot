*** Variables ***
${plugin_url_name}                              Plugin Installer from public URL
${plugin_url_seletor_boxpesquisar}              class:wp-filter-search
${plugin_url_seletor_instalar}                  xpath://*[@data-slug='plugin-installer-from-public-url']
${plugin_url_seletor_ativar}                    xpath://*[@aria-label='Ativar Plugin Installer from public URL']
${checkurlplugin}                               xpath://*[contains(text(), "Plugin Installer from public URL")]


*** Keywords ***
Processa URL
    Go To               ${website_url}/wp-admin/plugins.php

    ${checkurlplugin}=             Get Element Count               xpath://*[contains(text(), "Plugin Installer from public URL")]

    IF  ${checkurlplugin} == 0
        Plugin URL upload
    END

Plugin URL upload
    Go To                                       ${website_url}/wp-admin/plugin-install.php
    Sleep                                       7
    Input Text              ${plugin_url_seletor_boxpesquisar}           ${plugin_url_name}
    Wait Until Element Is Visible               ${checkurlplugin}
    Click Element                               ${plugin_url_seletor_instalar}
    Sleep                                       7
    Click Element                               ${plugin_url_seletor_instalar}