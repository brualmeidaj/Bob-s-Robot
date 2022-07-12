*** Settings ***
Resource        base.robot

Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Test Cases ***
Bobs robot
    Faz Login

 
