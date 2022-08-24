*** Variables ***
${pagepluginsunstall}               ${website_url}/wp-admin/plugins.php
${excludeaskimet}                   id:delete-akismet
${desativatebooked}                  xpath://*[@aria-label='Desativar Booked']
${excludebooked}                    xpath://*[@aria-label='Excluir Booked']
${desativatebreadcrumb}             xpath://*[@aria-label='Desativar Breadcrumb NavXT']
${excludebreadcrumb}                xpath://*[@aria-label='Excluir Breadcrumb NavXT']
${desativatesmash}                  xpath://*[@aria-label='Desativar Smash Balloon Instagram Feed']
${excludesmash}                     xpath://*[@aria-label='Excluir Smash Balloon Instagram Feed']
${desativateallinone}               xpath://*[@aria-label='Desativar All-in-One WP Migration']
${excludeallinone}                  xpath://*[@aria-label='Excluir All-in-One WP Migration']
${desativatehoneypot}               xpath://*[@aria-label='Desativar Honeypot for Contact Form 7']
${excludehoneypot}                  xpath://*[@aria-label='Excluir Honeypot for Contact Form 7']


*** Keywords ***
Processa Exclusão de plugins
    # Exclusão Askimet Anti-Spam
    # Desativar e Excluir Booked
    # Desativar e Excluir Breadcrumb
    # Desativar e Excluir Smash Balloon
    # Desativar e Excluir All in One
    Desativar Honeypot

Exclusão Askimet Anti-Spam
    Go To               ${pagepluginsunstall}
    Sleep               5
    Click Element       ${excludeaskimet}
    Handle Alert        action=ACCEPT
    Sleep               5
Desativar e Excluir Booked
    Sleep               10
    Click Element       ${desativatebooked}
    Sleep               5
    Click Element       ${excludebooked}
    Handle Alert        action=ACCEPT
    Sleep               5
Desativar e Excluir Breadcrumb
    Click Element       ${desativatebreadcrumb}
    Sleep               5
    Click Element       ${excludebreadcrumb}
    Handle Alert        action=ACCEPT
    Sleep               5
Desativar e Excluir Smash Balloon 
    Sleep               10
    Click Element       ${desativatesmash}
    Sleep               10
    Click Element       ${excludesmash}
    Handle Alert        action=ACCEPT
    Sleep               5
Desativar e Excluir All in One
    Sleep               10
    Click Element       ${desativateallinone}
    Sleep               10
    Click Element       ${excludeallinone}
    Handle Alert        action=ACCEPT
    Sleep               5
Desativar Honeypot
    Go To               ${pagepluginsunstall}
    Sleep               10
    Click Element       ${desativatehoneypot}
    Sleep               10
    Click Element       ${excludehoneypot}
    Handle Alert        action=ACCEPT
    Sleep               5