*** Variables ***
${pagepluginsunstall}               ${website_url}/wp-admin/plugins.php
${excludeaskimet}                   xpath://*[@aria-label='Excluir Akismet Anti-Spam']
${desativaraskimet}                 xpath://*[@aria-label='Desativar Akismet Anti-Spam']
${desativatebooked}                 xpath://*[@aria-label='Desativar Booked']
${excludebooked}                    xpath://*[@aria-label='Excluir Booked']
${desativatebreadcrumb}             xpath://*[@aria-label='Desativar Breadcrumb NavXT']
${excludebreadcrumb}                xpath://*[@aria-label='Excluir Breadcrumb NavXT']
${desativatesmash}                  xpath://*[@aria-label='Desativar Smash Balloon Instagram Feed']
${excludesmash}                     xpath://*[@aria-label='Excluir Smash Balloon Instagram Feed']
${desativateallinone}               xpath://*[@aria-label='Desativar All-in-One WP Migration']
${excludeallinone}                  xpath://*[@aria-label='Excluir All-in-One WP Migration']
${desativatehoneypot}               xpath://*[@aria-label='Desativar Honeypot for Contact Form 7']
${excludehoneypot}                  xpath://*[@aria-label='Excluir Honeypot for Contact Form 7']
${desativatecustomicons}            xpath://*[@aria-label='Desativar Custom Icons by Stylemixthemes']
${excludecustomicons}               xpath://*[@aria-label='Excluir Custom Icons by Stylemixthemes']
${desativaterecenttweets}           xpath://*[@aria-label='Desativar Recent Tweets Widget']
${excluderecenttweets}              xpath://*[@aria-label='Excluir Recent Tweets Widget']




*** Keywords ***
Processa Exclusão de plugins
    Go To               ${pagepluginsunstall}

    ${desativaraskimet}=             Get Element Count               xpath://*[@aria-label='Desativar Akismet Anti-Spam']

    IF  ${desativaraskimet} != 0
        Desativar Askimet
    END

    ${askimetantispan}=             Get Element Count               xpath://*[@data-slug='akismet']


    IF  ${askimetantispan} != 0
        Exclusão Askimet Anti-Spam
    END

    ${booked}=             Get Element Count               xpath://*[@aria-label='Desativar Booked']

    IF  ${booked} != 0
        Desativar e Excluir Booked
    END

    ${breadcrumb}=             Get Element Count               xpath://*[@aria-label='Desativar Breadcrumb NavXT']

    IF  ${breadcrumb} != 0
        Desativar e Excluir Breadcrumb
    END

    ${smashballoon}=             Get Element Count               xpath://*[@data-slug='instagram-feed']

    IF  ${smashballoon} != 0
        Desativar e Excluir Smash Balloon
    END

    ${allinone}=             Get Element Count               xpath://*[@data-slug='all-in-one-wp-migration']

    IF  ${allinone} != 0
        Desativar e Excluir All In One
    END

    ${honeypot}=             Get Element Count               xpath://*[@data-slug='contact-form-7-honeypot']

    IF  ${honeypot} != 0
        Desativar e Excluir Honeypot
    END

    ${customicons}=             Get Element Count               xpath://*[@data-slug='custom-icons-by-stylemixthemes']

    IF  ${customicons} != 0
        Desativar e Excluir Custom Icons
    END

    ${recenttweets}=             Get Element Count               xpath://*[@data-slug='recent-tweets-widget']

    IF  ${recenttweets} != 0
        Desativar e Excluir Recent Tweets
    END
    
    ${desableall}=             Get Element Count               css:input[name="checked[]"]

    IF  ${desableall} != 0
        Desativar
    END
    

    ${askimetantispan}=             Get Element Count               xpath://*[@data-slug='akismet']


    IF  ${askimetantispan} != 0
        Exclusão Askimet Anti-Spam
    END

    ${booked}=             Get Element Count               xpath://*[@aria-label='Desativar Booked']

    IF  ${booked} != 0
        Desativar e Excluir Booked
    END

    ${breadcrumb}=             Get Element Count               xpath://*[@aria-label='Desativar Breadcrumb NavXT']

    IF  ${breadcrumb} != 0
        Desativar e Excluir Breadcrumb
    END

    ${smashballoon}=             Get Element Count               xpath://*[@data-slug='instagram-feed']

    IF  ${smashballoon} != 0
        Desativar e Excluir Smash Balloon
    END

    ${allinone}=             Get Element Count               xpath://*[@data-slug='all-in-one-wp-migration']

    IF  ${allinone} != 0
        Desativar e Excluir All In One
    END

    ${honeypot}=             Get Element Count               xpath://*[@data-slug='contact-form-7-honeypot']

    IF  ${honeypot} != 0
        Desativar e Excluir Honeypot
    END

    ${customicons}=             Get Element Count               xpath://*[@data-slug='custom-icons-by-stylemixthemes']

    IF  ${customicons} != 0
        Desativar e Excluir Custom Icons
    END

    ${recenttweets}=             Get Element Count               xpath://*[@data-slug='recent-tweets-widget']

    IF  ${recenttweets} != 0
        Desativar e Excluir Recent Tweets
    END

    Excluir

Desativar Askimet
    Sleep                                       7
    Click Element                               ${desativaraskimet}

Exclusão Askimet Anti-Spam
    Sleep                                       7
    Click Element                               ${excludeaskimet}
    Handle Alert            action=ACCEPT

Desativar e Excluir Booked
    Sleep                                       7
    Click Element                               ${desativatebooked}
    Sleep                                       7
    Click Element                               ${excludebooked}
    Handle Alert        action=ACCEPT
Desativar e Excluir Breadcrumb
    Sleep                                       7
    Click Element                               ${desativatebreadcrumb}
    Sleep                                       7
    Click Element                               ${excludebreadcrumb}
    Handle Alert        action=ACCEPT
Desativar e Excluir Smash Balloon 
    Sleep                                       7
    Click Element                               ${desativatesmash}
    Sleep                                       7
    Click Element                               ${excludesmash}
    Handle Alert        action=ACCEPT

Desativar e Excluir All In One
    Wait Until Element Is Visible               css:input[value="all-in-one-wp-migration/all-in-one-wp-migration.php"]
    Click Element                               css:input[value="all-in-one-wp-migration/all-in-one-wp-migration.php"]

Desativar e Excluir Honeypot
    Wait Until Element Is Visible               css:input[value="contact-form-7-honeypot/honeypot.php"]
    Click Element                               css:input[value="contact-form-7-honeypot/honeypot.php"]

Desativar e Excluir Custom Icons
    Wait Until Element Is Visible               css:input[value="custom-icons-by-stylemixthemes/stm-custom-icons.php"]
    Click Element                               css:input[value="custom-icons-by-stylemixthemes/stm-custom-icons.php"]

Desativar e Excluir Recent Tweets
    Wait Until Element Is Visible               css:input[value="recent-tweets-widget/recent-tweets.php"]
    Click Element                               css:input[value="recent-tweets-widget/recent-tweets.php"]

Desativar
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

