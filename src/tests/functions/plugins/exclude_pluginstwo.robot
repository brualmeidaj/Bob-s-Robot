*** Variables ***
${pagepluginsunstall}               ${website_url}/wp-admin/plugins.php

*** Keywords ***
Processa Exclusão de plugins dois
    ${customicons}=             Get Element Count               xpath://*[@data-slug='custom-icons-by-stylemixthemes']

    IF  ${customicons} != 0
        Desativar e Excluir Custom Icons
        Desativar
    END

    ${smashballoon}=             Get Element Count               xpath://*[@data-slug='instagram-feed']

    IF  ${smashballoon} != 0
        Desativar e Excluir Smash Balloon
        Desativar
    END


    ${recenttweets}=             Get Element Count               xpath://*[@data-slug='recent-tweets-widget']

    IF  ${recenttweets} != 0
        Desativar e Excluir Recent Tweets
        Desativar
    END

    ${smashballoon}=             Get Element Count               xpath://*[@data-slug='instagram-feed']

    IF  ${smashballoon} != 0
        Desativar e Excluir Smash Balloon
        Excluir
    END

    ${customicons}=             Get Element Count               xpath://*[@data-slug='custom-icons-by-stylemixthemes']

    IF  ${customicons} != 0
        Desativar e Excluir Custom Icons
        Excluir
    END

    ${recenttweets}=             Get Element Count               xpath://*[@data-slug='recent-tweets-widget']

    IF  ${recenttweets} != 0
        Desativar e Excluir Recent Tweets
        Excluir
    END

Desativar e Excluir Smash Balloon 
    Wait Until Element Is Visible               css:input[value="instagram-feed/instagram-feed.php"]
    Mouse Down                                  css:input[value="instagram-feed/instagram-feed.php"]
    Run Keyword If    css:input[value="instagram-feed/instagram-feed.php"] == True         Sleep    3s
    Click Element                               css:input[value="instagram-feed/instagram-feed.php"]

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