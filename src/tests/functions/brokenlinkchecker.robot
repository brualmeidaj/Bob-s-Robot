*** Variables ***
${sitebrokenlink}                       https://www.brokenlinkcheck.com/
${urlbroken}                            id:url
${pesquisarlinks}                       class:createsitemap_buttonhp

*** Keywords ***
Checar link quebrados site
    Go To               ${sitebrokenlink}
    Sleep               10
    Input Text          ${urlbroken}            ${website_url}
    Sleep               3
    Click Element       ${pesquisarlinks}