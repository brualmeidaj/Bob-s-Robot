*** Variables ***
${allthemes}                                1             
${themespage}                               ${website_url}/wp-admin/themes.php
${excludethemes}                            css:.theme:nth-child(2)             
${excluirtema}                              xpath://a[contains(text(),'Excluir')]

*** Keywords ***
Exclusão de temas periféricos
    Go To                       ${themespage}
    Sleep                       10

    ${allthemes}=       Get Element Count               css:.theme
    WHILE           ${allthemes} != 2 
        Exclui Tema   
        ${allthemes}=       Get Element Count               css:.theme
    END

Exclui Tema
    Click Element           ${excludethemes}
    Sleep       10
    Click Element        ${excluirtema}
    Sleep       5
    Handle Alert        action=ACCEPT
    Sleep       10                    