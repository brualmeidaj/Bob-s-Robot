*** Variables ***
${configdiscuss}                    ${website_url}/wp-admin/options-discussion.php
${salvarconfig}                     id:submit                        
${campdenylist}                     id:disallowed_keys
${PATH}                             C:\\Users\\Bruna Almeida\\testelogin\\src\\tests\\denylist.txt
${discusscheckbox}                  css:input[name="default_comment_status"]
${campdenylisttwo}                  id:blacklist_keys


*** Keywords ***
    
Processa Configurações de discussão
    Go To               ${configdiscuss}

    ${campcheck}=             Get Element Count               id:blacklist_keys

    IF  ${campcheck} != 0
        Configurar discussões two
    END

    ${campcheckone}=             Get Element Count               ${campdenylist}
    
    IF  ${campcheckone} != 0
        Configurar discussões
    END

Configurar discussões two
    Wait Until Element Is Visible               ${discusscheckbox}
    Mouse Down          ${discusscheckbox}
    Unselect Checkbox       ${discusscheckbox}
    Sleep               3
    ${Cmd_Output}       Get File            ${PATH}          encoding=UTF-8    encoding_errors=strict   
    Input Text          ${campdenylisttwo}            ${Cmd_Output}   
    Sleep               3
    Click Element           ${salvarconfig}     

Configurar discussões
    Wait Until Element Is Visible               ${discusscheckbox}
    Mouse Down          ${discusscheckbox}
    Unselect Checkbox       ${discusscheckbox}
    Sleep               3
    ${Cmd_Output}       Get File            ${PATH}          encoding=UTF-8    encoding_errors=strict   
    Input Text          ${campdenylist}            ${Cmd_Output}   
    Sleep               3
    Click Element           ${salvarconfig}           
