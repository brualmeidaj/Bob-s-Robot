*** Settings ***
Library                 ../app.py
 
 
*** Test Cases ***
Deve retornar mensagem inserida
    ${result}=          welcome         garotos de programa
    Should Be Equal             ${result}           Oi garotos de programa, vou fazer um teste PERDI
     