*** Variables ***
${pagelinks}                ${website_url}/wp-admin/options-permalink.php
${salvarlinks}              id:submit

*** Keywords ***
Processa links permanentes 
    Go To               ${pagelinks}
    Sleep               10
    Click Element       ${salvarlinks}