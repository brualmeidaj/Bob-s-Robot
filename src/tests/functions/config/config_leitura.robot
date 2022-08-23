*** Variables ***
${configleitura}                    ${website_url}/wp-admin/options-discussion.php
${salvarconfig}                     id:submit                        
${campdenylist}                     id:disallowed_keys
${PATH}                             C:\\Users\\Bruna Almeida\\testelogin\\src\\tests\\denylist.txt


*** Keywords ***
Processa Configurações de leitura
    Cópia arquivo

Cópia arquivo
    Go To               ${configleitura}
    Sleep               2
    ${Cmd_Output}       Get File            ${PATH}          encoding=UTF-8    encoding_errors=strict   
    Input Text          ${campdenylist}            ${Cmd_Output}   
    Sleep               5
    Click Element           ${salvarconfig}           
