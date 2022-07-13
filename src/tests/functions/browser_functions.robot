*** Variables ***
${website_url}

*** Keywords ***
Nova sessao    
    Open Browser           ${website_url}            chrome    
    Maximize Browser Window
 
Encerra sessao
    Close Browser  
