*** Variables ***
${page_url_plugin}          ${website_url}/wp-admin/plugins.php?page=plgf_pipu01_page
${configurarcimy}           ${website_url}/wp-admin/options-general.php?page=swift_smtp
${emailcimy}                form@servermail.srv.br
${link_baixarplugin}        https://projetos.agenciaalper.com.br/fide/plugins/cimy.zip
${campo_plugin_url}         id:urlpluginzip
${botao_upload_plugin}      id:url-install-plugin-submit
${ativar_plugin_cimy}       xpath://*[@aria-label='Ativar Cimy Swift SMTP']
${campotestemail}           css:input[name="testemail"]




*** Keywords ***
Processa SMTP
    Go To               ${website_url}/wp-admin/plugins.php

    ${checkcimy}=             Get Element Count               xpath://*[contains(text(), "Cimy Swift SMTP")]
    IF  ${checkcimy} == 0
        Entrar no plugin de url e fazer upload
        Configuração CIMY
        # Envio e-mail teste
    END


Entrar no plugin de url e fazer upload 
    Go To                                                       ${page_url_plugin}
    Wait Until Element Is Visible                               ${campo_plugin_url}
    Click Element                                               ${campo_plugin_url} 
    Input Text              ${campo_plugin_url}                 ${link_baixarplugin}
    Click Element                                               ${botao_upload_plugin} 
    Sleep                                                       5
    Go To                                                       ${website_url}/wp-admin/plugins.php
    Wait Until Element Is Visible                               ${ativar_plugin_cimy}
    Click Element                                               ${ativar_plugin_cimy}
    Sleep                                                       5

Configuração CIMY   
    Go To                       ${configurarcimy}
    Input Text                  id:css_sender_name              ${website_nome}
    Input Text                  id:css_sender_mail              ${emailcimy}
    Click Element               id:css_sender_overwrite_always
    Input Text                  id:css_server               smtp.emailemnuvem.com.br
    Click Element               id:css_port
    Click Element               css:option[value="465"]
    Input Text                  id:css_username             ${emailcimy}
    Input Text                  id:css_password             %{LOGIN_PASS_CIMY}
    Click Element               id:css_ssl                  
    Click Element               css:option[value="ssl"]
    Click Button                css:input[value="Salvar alterações"]

Envio e-mail teste
    Sleep                       5
    Input Text                  ${campotestemail}          ${website_teste}
    Click Element               class:button


