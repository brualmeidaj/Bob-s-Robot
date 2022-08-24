*** Variables ***
${pagepluginsunstall}               ${website_url}/wp-admin/plugins.php
${excludeaskimet}                   id:delete-akismet
${desativatebooked}                  xpath://*[@aria-label='Desativar Booked']
${excludebooked}                    xpath://*[@aria-label='Excluir Booked']
${desativatebreadcrumb}             xpath://*[@aria-label='Desativar Breadcrumb NavXT']
${excludebreadcrumb}                xpath://*[@aria-label='Excluir Breadcrumb NavXT']

*** Keywords ***
Processa Exclusão de plugins
    # Exclusão Askimet Anti-Spam
    # Desativar e Excluir Booked
    Desativar e Excluir Breadcrumb

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