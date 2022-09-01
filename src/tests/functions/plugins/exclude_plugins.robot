*** Variables ***
${pagepluginsunstall}               ${website_url}/wp-admin/plugins.php

*** Keywords ***
Processa Exclusão de plugins
    Go To               ${pagepluginsunstall}

    ${askimet}=             Get Element Count               xpath://*[@data-slug='akismet']

    IF  ${askimet} != 0
        Desativar e Excluir Askimet Anti-Spam
    END

    ${booked}=             Get Element Count               xpath://*[@data-slug='booked']

    IF  ${booked} != 0
        Desativar e Excluir Booked
    END

    ${breadcrumb}=             Get Element Count               xpath://*[@data-slug='breadcrumb-navxt']

    IF  ${breadcrumb} != 0
        Desativar e Excluir Breadcrumb
    END

    ${honeypot}=             Get Element Count               xpath://*[@data-slug='contact-form-7-honeypot']

    IF  ${honeypot} != 0
        Desativar e Excluir Honeypot
    END

    ${customicons}=             Get Element Count               xpath://*[@data-slug='custom-icons-by-stylemixthemes']

    IF  ${customicons} != 0
        Desativar e Excluir Custom Icons
    END

    ${smashballoon}=             Get Element Count               xpath://*[@data-slug='instagram-feed']

    IF  ${smashballoon} != 0
        Desativar e Excluir Smash Balloon
    END


    # ${recenttweets}=             Get Element Count               xpath://*[@data-slug='recent-tweets-widget']

    # IF  ${recenttweets} != 0
    #     Desativar e Excluir Recent Tweets
    # END

    Desativar


    ${askimet}=             Get Element Count               xpath://*[@data-slug='akismet']

    IF  ${askimet} != 0
        Desativar e Excluir Askimet Anti-Spam
    END

    ${booked}=             Get Element Count               xpath://*[@data-slug='booked']

    IF  ${booked} != 0
        Desativar e Excluir Booked
    END

    ${breadcrumb}=             Get Element Count               xpath://*[@data-slug='breadcrumb-navxt']

    IF  ${breadcrumb} != 0
        Desativar e Excluir Breadcrumb
    END

    ${honeypot}=             Get Element Count               xpath://*[@data-slug='contact-form-7-honeypot']

    IF  ${honeypot} != 0
        Desativar e Excluir Honeypot
    END

    ${smashballoon}=             Get Element Count               xpath://*[@data-slug='instagram-feed']

    IF  ${smashballoon} != 0
        Desativar e Excluir Smash Balloon
    END

    ${customicons}=             Get Element Count               xpath://*[@data-slug='custom-icons-by-stylemixthemes']

    IF  ${customicons} != 0
        Desativar e Excluir Custom Icons
    END

    # ${recenttweets}=             Get Element Count               xpath://*[@data-slug='recent-tweets-widget']

    # IF  ${recenttweets} != 0
    #     Desativar e Excluir Recent Tweets
    # END

    Excluir

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

Desativar e Excluir Smash Balloon 
    Wait Until Element Is Visible               css:input[value="instagram-feed/instagram-feed.php"]
    Mouse Down                                  css:input[value="instagram-feed/instagram-feed.php"]
    Run Keyword If    css:input[value="instagram-feed/instagram-feed.php"] == True         Sleep    3s
    Click Element                               css:input[value="instagram-feed/instagram-feed.php"]

Desativar e Excluir Honeypot
    Wait Until Element Is Visible               css:input[value="contact-form-7-honeypot/honeypot.php"]
    Mouse Down                                  css:input[value="contact-form-7-honeypot/honeypot.php"]
    Run Keyword If    css:input[value="contact-form-7-honeypot/honeypot.php"] == True         Sleep    3s
    Click Element                               css:input[value="contact-form-7-honeypot/honeypot.php"]

Desativar e Excluir Custom Icons
    Wait Until Element Is Visible               css:input[value="custom-icons-by-stylemixthemes/stm-custom-icons.php"]
    Mouse Down                                  css:input[value="custom-icons-by-stylemixthemes/stm-custom-icons.php"]
    Run Keyword If    css:input[value="custom-icons-by-stylemixthemes/stm-custom-icons.php"] == True         Sleep    3s
    Click Element                               css:input[value="custom-icons-by-stylemixthemes/stm-custom-icons.php"]

Desativar e Excluir Recent Tweets
    Wait Until Element Is Visible               css:input[value="recent-tweets-widget/recent-tweets.php"]
    Mouse Down                                  css:input[value="recent-tweets-widget/recent-tweets.php"]
    Run Keyword If              css:input[value="recent-tweets-widget/recent-tweets.php"] == True                   Sleep    3s
    Click Element                               css:input[value="recent-tweets-widget/recent-tweets.php"]

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

