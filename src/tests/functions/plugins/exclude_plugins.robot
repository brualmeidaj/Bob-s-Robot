*** Variables ***
${pagepluginsunstall}               ${website_url}/wp-admin/plugins.php

*** Keywords ***
Processa Exclusão de plugins
    Go To               ${pagepluginsunstall}

    ${askimet}=             Get Element Count               xpath://*[@data-slug='akismet']

    IF  ${askimet} != 0
        Desativar e Excluir Askimet Anti-Spam
        Desativar
    END

    ${booked}=             Geadfet Element Count               xpath://*[@data-slug='booked']

    IF  ${booked} != 0
        Desativar e Excluir Booked
        Desativar
    END

    ${breadcrumb}=             Get Element Count               xpath://*[@data-slug='breadcrumb-navxt']

    IF  ${breadcrumb} != 0
        Desativar e Excluir Breadcrumb
        Desativar
    END

    ${honeypot}=             Get Element Count               xpath://*[@data-slug='contact-form-7-honeypot']

    IF  ${honeypot} != 0
        Desativar e Excluir Honeypot
        Desativar
    END


    ${askimet}=             Get Element Count               xpath://*[@data-slug='akismet']

    IF  ${askimet} != 0
        Desativar e Excluir Askimet Anti-Spam
        Excluir
    END

    ${booked}=             Get Element Count               xpath://*[@data-slug='booked']

    IF  ${booked} != 0
        Desativar e Excluir Booked
        Excluir
    END

    ${breadcrumb}=             Get Element Count               xpath://*[@data-slug='breadcrumb-navxt']

    IF  ${breadcrumb} != 0
        Desativar e Excluir Breadcrumb
        Excluir
    END

    ${honeypot}=             Get Element Count               xpath://*[@data-slug='contact-form-7-honeypot']

    IF  ${honeypot} != 0
        Desativar e Excluir Honeypot
        Excluir
    END


Desativar e Excluir Askimet Anti-Spam
    Wait Until Element Is Visible               css:input[value="akismet/akismet.php"]
    Mouse Down                                  css:input[value="akismet/akismet.php"]
    Run Keyword If              css:input[value="akismet/akismet.php"] == True                      Sleep    3s
    Click Element                               css:input[value="akismet/akismet.php"]

Desativar e Excluir Booked
    Wait Until Element Is Visible               css:input[value="booked/booked.php"]       
    Mouse Down                                  css:input[value="booked/booked.php"]
    Run Keyword If    css:input[value="booked/booked.php"] == True         Sleep    3s
    Click Element                               css:input[value="booked/booked.php"]

Desativar e Excluir Breadcrumb
    Wait Until Element Is Visible               css:input[value="breadcrumb-navxt/breadcrumb-navxt.php"]
    Mouse Down                                  css:input[value="breadcrumb-navxt/breadcrumb-navxt.php"]
    Run Keyword If    css:input[value="breadcrumb-navxt/breadcrumb-navxt.php"] == True         Sleep    3s
    Click Element                               css:input[value="breadcrumb-navxt/breadcrumb-navxt.php"]

Desativar e Excluir Honeypot
    Wait Until Element Is Visible               css:input[value="contact-form-7-honeypot/honeypot.php"]
    Mouse Down                                  css:input[value="contact-form-7-honeypot/honeypot.php"]
    Run Keyword If    css:input[value="contact-form-7-honeypot/honeypot.php"] == True         Sleep    3s
    Click Element                               css:input[value="contact-form-7-honeypot/honeypot.php"]


Desativar
    Sleep                                       7
    Wait Until Element Is Visible               css:select[name="action"]
    Click Element                               css:select[name="action"]
    Click Element                               css:option[value="deactivate-selected"]
    Click Element                               id:doaction
    Sleep                                       7

Excluir
    Sleep                                       7
    Click Element                               css:select[name="action"]
    Click Element                               css:option[value="delete-selected"]
    Click Element                               id:doaction
    Handle Alert        action=ACCEPT
    Sleep                                       7

