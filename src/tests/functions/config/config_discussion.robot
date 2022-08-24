*** Variables ***
${configdiscuss}                    ${website_url}/wp-admin/options-discussion.php
${salvarconfig}                     id:submit                        
${campdenylist}                     id:disallowed_keys
${PATH}                             C:\\Users\\Bruna Almeida\\testelogin\\src\\tests\\denylist.txt
${discusscheckbox}                  css:input[name="default_comment_status"]


*** Keywords ***
Processa Configurações de discussão
    Cópia arquivo

Cópia arquivo
    Go To               ${configdiscuss}
    Sleep               5
    Unselect Checkbox       ${discusscheckbox}
    Sleep               3
    ${Cmd_Output}       Get File            ${PATH}          encoding=UTF-8    encoding_errors=strict   
    Input Text          ${campdenylist}            ${Cmd_Output}   
    Sleep               3
    Click Element           ${salvarconfig}           
