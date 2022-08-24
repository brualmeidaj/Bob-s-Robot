*** Variables ***
${is_anyonetheme}                       0
${temaincorreto}                        1
${qty_perifericos}                      1
${themespage}                               ${website_url}/wp-admin/themes.php
${excluirtema}                              xpath://a[contains(text(),'Excluir')]

*** Keywords ***
Exclusão de temas periféricos
    Go To                       ${themespage}
    ${qty_perifericos}=              Get Element Count               css:.theme:not(.active)

    WHILE           ${qty_perifericos} != 0
        Exclui Tema
        ${qty_perifericos}=              Get Element Count               css:.theme:not(.active)
    END

Exclui Tema
    Click Element        css:.theme:not(.active):nth-child(2)
    Sleep       10
    Click Element        ${excluirtema}
    Sleep       5
    Handle Alert        action=ACCEPT
    Sleep       10                    