*** Variables ***
${pagepluginsunstall}               ${website_url}/wp-admin/plugins.php
${excludeaskimet}                   id:delete-akismet
${desativatebooked}                  xpath://*[@aria-label='Desativar Booked']
${excludebooked}                    xpath://*[@aria-label='Excluir Booked']
${desativatebreadcrumb}             xpath://*[@aria-label='Desativar Breadcrumb NavXT']
${excludebreadcrumb}                xpath://*[@aria-label='Excluir Breadcrumb NavXT']
${desativatesmash}                  xpath://*[@aria-label='Desativar Smash Balloon Instagram Feed']
${excludesmash}                     xpath://*[@aria-label='Excluir Smash Balloon Instagram Feed']

*** Keywords ***
Processa Exclusão de plugins
    # Exclusão Askimet Anti-Spam
    # Desativar e Excluir Booked
    # Desativar e Excluir Breadcrumb
    Desativar e Excluir Smash Balloon

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