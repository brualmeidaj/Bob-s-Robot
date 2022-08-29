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

    ${askimetantispan}=             Get Element Count               xpath://*[contains(text(), "Akismet Anti-Spam")]


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

    ${smashballoon}=             Get Element Count               xpath://*[contains(text(), "Smash Balloon Instagram Feed")]

    IF  ${smashballoon} != 0
        Desativar e Excluir Smash Balloon
    END

    ${allinone}=             Get Element Count               xpath://*[contains(text(), "All-in-One WP Migration")]

    IF  ${allinone} != 0
        Desativar e Excluir All in One
    END

    ${honeypot}=             Get Element Count               xpath://*[contains(text(), "Honeypot for Contact Form 7")]

    IF  ${honeypot} != 0
        Desativar e Excluir Honeypot
    END

    ${customicons}=             Get Element Count               xpath://*[contains(text(), "Custom Icons by Stylemixthemes")]

    IF  ${customicons} != 0
        Desativar e Excluir Custom Icons
    END

    ${recenttweets}=             Get Element Count               xpath://*[contains(text(), "Recent Tweets Widget")]

    IF  ${recenttweets} != 0
        Desativar e Excluir Recent Tweets
    END

Desativar Askimet
    Wait Until Element Is Visible               ${desativaraskimet}
    Click Element                               ${desativaraskimet}

Exclusão Askimet Anti-Spam
    Sleep                                       5
    Click Element                               ${excludeaskimet}
    Handle Alert            action=ACCEPT

Desativar e Excluir Booked
    Sleep                                       5
    Click Element                               ${desativatebooked}
    Wait Until Element Is Visible               ${excludebooked}
    Click Element                               ${excludebooked}
    Handle Alert        action=ACCEPT
Desativar e Excluir Breadcrumb
    Sleep                                       5
    Click Element                               ${desativatebreadcrumb}
    Wait Until Element Is Visible               ${excludebreadcrumb}
    Click Element                               ${excludebreadcrumb}
    Handle Alert        action=ACCEPT
Desativar e Excluir Smash Balloon 
    Sleep                                       5
    Click Element                               ${desativatesmash}
    Wait Until Element Is Visible               ${excludesmash}
    Click Element                               ${excludesmash}
    Handle Alert        action=ACCEPT
Desativar e Excluir All in One
    Sleep                                       5
    Click Element                               ${desativateallinone}
    Wait Until Element Is Visible               ${excludeallinone}
    Click Element                               ${excludeallinone}
    Handle Alert        action=ACCEPT
Desativar e Excluir Honeypot
    Sleep                                       5
    Click Element                               ${desativatehoneypot}
    Wait Until Element Is Visible               ${excludehoneypot}
    Click Element                               ${excludehoneypot}
    Handle Alert        action=ACCEPT
Desativar e Excluir Custom Icons
    Sleep                                       7
    Click Element                               ${desativatecustomicons}
    Wait Until Element Is Visible               ${excludecustomicons}
    Click Element                               ${excludecustomicons}
    Handle Alert        action=ACCEPT
Desativar e Excluir Recent Tweets
    Sleep                                       8
    Click Element                               ${desativaterecenttweets}
    Wait Until Element Is Visible               ${excluderecenttweets}
    Click Element                               ${excluderecenttweets}
    Handle Alert        action=ACCEPT