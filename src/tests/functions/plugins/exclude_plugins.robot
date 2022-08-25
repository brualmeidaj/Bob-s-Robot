*** Variables ***
${pagepluginsunstall}               ${website_url}/wp-admin/plugins.php
${excludeaskimet}                   id:delete-akismet
${desativatebooked}                 xpath://*[@aria-label='Desativar Booked']
${excludebooked}                    xpath://*[@aria-label='Excluir Booked']
${desativatebreadcrumb}             xpath://*[@aria-label='Desativar Breadcrumb NavXT']
${excludebreadcrumb}                xpath://*[@aria-label='Excluir Breadcrumb NavXT']
${desativatesmash}                  xpath://*[@aria-label='Desativar Smash Balloon Instagram Feed']
${excludesmash}                     xpath://*[@aria-label='Excluir Smash Balloon Instagram Feed']
${desativateallinone}               id:deactivate-all-in-one-wp-migration
${excludeallinone}                  xpath://*[@aria-label='Excluir All-in-One WP Migration']
${desativatehoneypot}               xpath://*[@aria-label='Desativar Honeypot for Contact Form 7']
${excludehoneypot}                  xpath://*[@aria-label='Excluir Honeypot for Contact Form 7']
${desativatecustomicons}            xpath://*[@aria-label='Desativar Custom Icons by Stylemixthemes']
${excludecustomicons}               xpath://*[@aria-label='Excluir Custom Icons by Stylemixthemes']
${desativaterecenttweets}           xpath://*[@aria-label='Desativar Recent Tweets Widget']
${excluderecenttweets}              xpath://*[@aria-label='Excluir Recent Tweets Widget']


*** Keywords ***
Processa Exclusão de plugins
    ${askimetantispan}=             Get Element Count               xpath://*[contains(text(), "Akismet Anti-Spam")]
    Go To               ${pagepluginsunstall}


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

    

Exclusão Askimet Anti-Spam
    Go To               ${pagepluginsunstall}
    Sleep               5
    Click Element       ${excludeaskimet}
    Handle Alert        action=ACCEPT
Desativar e Excluir Booked
    Sleep               10
    Click Element       ${desativatebooked}
    Sleep               5
    Click Element       ${excludebooked}
    Handle Alert        action=ACCEPT
Desativar e Excluir Breadcrumb
    Click Element       ${desativatebreadcrumb}
    Sleep               5
    Click Element       ${excludebreadcrumb}
    Handle Alert        action=ACCEPT
Desativar e Excluir Smash Balloon 
    Sleep               10
    Click Element       ${desativatesmash}
    Sleep               10
    Click Element       ${excludesmash}
    Handle Alert        action=ACCEPT
Desativar e Excluir All in One
    Sleep               10
    Click Element       ${desativateallinone}
    Sleep               10
    Click Element       ${excludeallinone}
    Handle Alert        action=ACCEPT
Desativar e Excluir Honeypot
    Sleep               10
    Click Element       ${desativatehoneypot}
    Sleep               10
    Click Element       ${excludehoneypot}
    Handle Alert        action=ACCEPT
Desativar e Excluir Custom Icons
    Sleep               10
    Click Element       ${desativatecustomicons}
    Sleep               10
    Click Element       ${excludecustomicons}
    Handle Alert        action=ACCEPT
Desativar e Excluir Recent Tweets
    Sleep               10
    Click Element       ${desativaterecenttweets}
    Sleep               10
    Click Element       ${excluderecenttweets}
    Handle Alert        action=ACCEPT
    Sleep               5