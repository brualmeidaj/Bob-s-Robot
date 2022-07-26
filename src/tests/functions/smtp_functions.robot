*** Variables ***
${website_url}
${boxpesquisar}         class:wp-filter-search
${instalareativar}      xpath://*[@id="the-list"]//li


*** Keywords ***

Entrar na página de plugins e pesquisar plugin SMTP
    Sleep                   15
    Go To                   https://inovacaodrywall.com.br/wp-admin/plugin-install.php
    Sleep                   15
Instalar e ativar o plugin SMTP
