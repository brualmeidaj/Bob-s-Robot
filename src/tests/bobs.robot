*** Settings ***
Resource        base.robot

Test Setup          Nova sessao
# Test Teardown       Encerra sessao

*** Test Cases ***
Bobs robot
    Faz Login
    # Processa WpRename
    # Processa 404
    # Processa URL
    # Processa SMTP
    # Processa WP CACHE
    # Processa Configurações de leitura
    Processa links permanentes
    # Checar link quebrados site
    Processa DATABASE

 
