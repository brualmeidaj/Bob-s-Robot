*** Variables ***
${pageupload}                       ${website_url}/wp-admin/plugin-install.php
${searchbox}                        class:wp-filter-search
${name_database}                    Contact Form 7 Database Addon
${name_databasetwo}                 https://projetos.agenciaalper.com.br/fide/plugins/contact-form-7.zip
${botao_uploaddatabase}             id:url-install-plugin-submit
${upload_database}                  xpath://*[@data-slug='contact-form-cfdb7']
${pluginsativar}                    ${website_url}/wp-admin/plugins.php
${ativardatabase}                   xpath://*[@aria-label='Ativar Contact Form CFDB7']
${data7basecheck}                   xpath://*[contains(text(), "Contact Form 7 Database Addon – CFDB7")]
${databasecheck}                    xpath://*[contains(text(), "formulário de contato")]
${titledatabase}                    xpath://*[contains(text(), "Contact Form CFDB7")]
${pageuploaddatabase}               ${website_url}/wp-admin/plugins.php?page=plgf_pipu01_page
${boxurldatabase}                   id:urlpluginzip
${firstdatabase}                    xpath://*[@aria-label='Ativar Contact Form 7']



*** Keywords ***
Processa DATABASE
    Go To                                       ${pluginsativar}
    ${titledatabase7}=             Get Element Count               xpath://*[contains(text(), "formulário de contato")]

    IF  ${titledatabase7} == 0
        Plugin DATABASE7 upload
        Plugin DATABASE7 Instalar
        Plugin DATABASE7 Ativar
    END

    ${titledatabase}=             Get Element Count               xpath://*[contains(text(), "Contact Form CFDB7")]

    IF  ${titledatabase} == 0
        Plugin DATABASE upload
        Plugin DATABASE Instalar
        Plugin DATABASE Ativar
    END

Plugin DATABASE7 upload
    Go To                                               ${pageuploaddatabase}
    Wait Until Element Is Visible                       ${boxurldatabase}
    Click Element                                       ${boxurldatabase}
    Input Text              ${boxurldatabase}           ${name_databasetwo}
    Wait Until Element Is Visible                       ${botao_uploaddatabase}

Plugin DATABASE7 Instalar               
    Click Element                                   ${botao_uploaddatabase}
    Sleep                                           7
    Click Element                                   ${botao_uploaddatabase}

Plugin DATABASE upload
    Go To                                           ${pageupload}
    Wait Until Element Is Visible                   ${searchbox}
    Input Text              ${searchbox}            ${name_database}

Plugin DATABASE Instalar
    Sleep                                           7               
    Click Element                                   ${upload_database}
    Sleep                                           7

Plugin DATABASE Ativar
    Go To                                           ${pluginsativar}
    Wait Until Element Is Visible                   ${titledatabase}               
    Click Element                                   ${ativardatabase}                                    