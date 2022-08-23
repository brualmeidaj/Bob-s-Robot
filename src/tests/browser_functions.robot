*** Variables ***
${website_url}                            

*** Keywords ***
Nova sessao    
    Open Browser           about:blank               chrome    
    Acessa Pagina De Login
    Maximize Browser Window
 
Encerra sessao
    Close Browser  
