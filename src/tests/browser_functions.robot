*** Variables ***
${website_url}                            

*** Keywords ***
Nova sessao    
    Open Browser           about:blank               chrome                 options=add_experimental_option('excludeSwitches', ['enable-logging'])    
    Acessa Pagina De Login
    Maximize Browser Window
 
Encerra sessao
    Close Browser  
