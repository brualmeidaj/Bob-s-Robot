*** Settings ***
Library         SeleniumLibrary
 
Test Setup          Nova sessão
Test Teardown       Encerra sessão
 
*** Variables ***
${url}                  https://inovacaodrywall.com.br/wp-login.php?redirect_to=https%3A%2F%2Finovacaodrywall.com.br%2Fwp-admin%2F&reauth=1
 
*** Keywords ***
Nova sessão    
    Open Browser           ${url}         chrome
 
Encerra sessão
    Close Browser    