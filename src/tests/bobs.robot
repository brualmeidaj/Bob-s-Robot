*** Settings ***
Resource        base.robot

Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Test Cases ***
Bobs robot
    Faz Login
    IF      ${is_controle} == 0 
        Entrar na página de plugins e pesquisar plugin
        Instalar e ativar plugin Rename
        Configurar Plugin Rename 
    END
    Entrar na página de plugins e pesquisar plugin 404
    Instalar e ativar o plugin 404

 
