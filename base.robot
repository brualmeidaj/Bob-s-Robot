*** Settings ***
Library         app.py
Library         SeleniumLibrary
 
*** Variables ***
${url}                  %{WEBSITE_URL}


*** Keywords ***
Nova sessao    
    Open Browser           ${url}         chrome
    Maximize Browser Window
 
Encerra sessao
    Close Browser  