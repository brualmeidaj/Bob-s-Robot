*** Settings ***
Resource        base.robot

Test Setup          Nova sessao
Test Teardown       Encerra sessao

*** Variables ***
${erro_no_login}                  1

*** Test Cases ***
Bobs robot
    Faz Login

 
