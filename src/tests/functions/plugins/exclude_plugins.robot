*** Variables ***
${pagepluginsunstall}               ${website_url}/wp-admin/plugins.php
${excludeaskimet}                   id:delete-akismet
${clickdesativate}                  id:deactivate-booked

*** Keywords ***
Processa Exclusão de plugins
    # Exclusão Askimet Anti-Spam
    Desativar e Excluir Booked

Exclusão Askimet Anti-Spam
    Go To               ${pagepluginsunstall}
    Sleep               5
    Click Element       ${excludeaskimet}

Desativar e Excluir Booked
    Go To               ${pagepluginsunstall}
    Sleep               5
    Click Element       ${clickdesativate}