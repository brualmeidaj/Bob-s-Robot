*** Settings ***
Resource        base.robot

Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Test Cases ***
Bobs robot
    Faz Login
    Entrar na página de plugins e pesquisar plugin
    Instalar e ativar plugin Rename
    Configurar Plugin Rename 


 
