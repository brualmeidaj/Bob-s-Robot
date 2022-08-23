*** Variables ***
${pageupload}                       ${website_url}/wp-admin/plugin-install.php
${searchbox}                        class:wp-filter-search
${name_database}                    Contact Form 7
${upload_database}                  xpath://*[@id="the-list"]//li
${pluginsativar}                    ${website_url}/wp-admin/plugins.php
${ativardatabase}                   id:activate-contact-form-7                   


*** Keywords ***
Processa DATABASE
    Plugin DATABASE upload
    Plugin DATABASE Instalar
    Plugin DATABASE Ativar

Plugin DATABASE upload
    Go To                   ${pageupload}
    Sleep                   5
    Input Text              ${searchbox}           ${name_database}

Plugin DATABASE Instalar
    Sleep                           10
    Click Element                   ${upload_database}

Plugin DATABASE Ativar
    Sleep                           10
    Go To                           ${pluginsativar}
    Sleep                           5
    Click Element                   ${ativardatabase}                          