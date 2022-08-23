*** Settings ***
Library         ../app.py
Library         SeleniumLibrary
Resource        ./tests/denylist.txt

*** Variables ***
${configleitura}                    ${website_url}/wp-admin/options-discussion.php
${desmarcarcampo}                   id:default_comment_status
${salvarconfig}                     id:submit                        
${campdenylist}                     id:disallowed_keys
${PATH}                             C:\\Users\\Bruna Almeida\\testelogin\\src\\tests

*** Keywords ***
Processa Configurações de leitura
    Go To               ${configleitura}
    Sleep               5
    Click Element       ${desmarcarcampo}
    Sleep               5
    Copy File            ${PATH}                    ./denylist.txt
    ${campdenylist}=          Get Text            ./tests/denylist.txt
    Input Text          ${campdenylist}            ./tests/denylist.txt   
    Sleep               15
    Click Element           ${salvarconfig}                                                 
