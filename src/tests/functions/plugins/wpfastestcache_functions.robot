*** Variables ***
${page_plugin_url}          ${website_url}/wp-admin/plugins.php?page=plgf_pipu01_page
${campo_url_plugin}         id:urlpluginzip
${link_plugin_baixar}       https://projetos.agenciaalper.com.br/fide/plugins/wp_fastest_cache_premium.zip
${botao_plugin_upload}      id:url-install-plugin-submit
${box_pesquisar}            class:wp-filter-search
${plugin_wpcache}           wp fastest cache
${instalarwpcache}          xpath://*[@id="the-list"]//li
${ativarwpcachepremium}     id:activate-wp-fastest-cache-premium
${ativarwpcache}            id:activate-wp-fastest-cache
${checkbox1}                id:wpFastestCacheStatus
${checkbox2}                id:wpFastestCacheWidgetCache                   
${checkbox3}                id:wpFastestCacheLoggedInUser
${checkbox4}                id:wpFastestCacheMobile
${checkbox5}                id:wpFastestCacheMobileTheme
${checkbox6}                id:wpFastestCacheNewPost
${checkbox7}                id:wpFastestCacheUpdatePost
${checkbox8}                id:wpFastestCacheMinifyHtml
${checkbox9}                id:wpFastestCacheMinifyHtmlPowerFul
${checkbox10}               id:wpFastestCacheMinifyCss
${checkbox11}               id:wpFastestCacheMinifyCssPowerFul
${checkbox12}               id:wpFastestCacheCombineCss
${checkbox13}               id:wpFastestCacheMinifyJs
${checkbox14}               id:wpFastestCacheCombineJs
${checkbox15}               id:wpFastestCacheCombineJsPowerFul 
${checkbox16}               id:wpFastestCacheGzip
${checkbox17}               id:wpFastestCacheLBC
${checkbox18}               id:wpFastestCacheDisableEmojis
${checkbox19}               id:wpFastestCacheGoogleFonts
${submit}                   css:input[value="Submit"]


*** Keywords ***
Processa WP CACHE
    Go To               ${website_url}/wp-admin/plugins.php

    ${checkwpfastest}=             Get Element Count               xpath://*[contains(text(), "mais rápido")]
    IF  ${checkwpfastest} == 0
        Baixar WP FASTEST CACHE e Ativar
    END

    ${checkwpfastestpremium}=             Get Element Count               xpath://*[contains(text(), "The Premium")]
    IF  ${checkwpfastestpremium} == 0
        Entrar no plugin de url e fazer upload WP
        Configuração WP FASTEST CACHE E PREMIUM
    END


Baixar WP FASTEST CACHE e Ativar
    Go To                                                       ${website_url}/wp-admin/plugin-install.php
    Wait Until Element Is Visible                               ${box_pesquisar}     
    Input Text              ${box_pesquisar}                    ${plugin_wpcache}
    Sleep                                                       5
    Wait Until Element Is Visible                               ${instalarwpcache}
    Click Element                                               ${instalarwpcache}
    Sleep                                                       7
    Go To                                                       ${website_url}/wp-admin/plugins.php
    Wait Until Element Is Visible                               ${ativarwpcache}
    Click Element                                               ${ativarwpcache}

Entrar no plugin de url e fazer upload WP
    Go To                                                       ${page_plugin_url}
    Wait Until Element Is Visible                               ${campo_url_plugin}
    Click Element                                               ${campo_url_plugin} 
    Input Text              ${campo_url_plugin}                 ${link_plugin_baixar}
    Wait Until Element Is Visible                               ${botao_plugin_upload} 
    Click Element                                               ${botao_plugin_upload} 
    Sleep                                                       7
    Go To                                                       ${website_url}/wp-admin/plugins.php
    Wait Until Element Is Visible                               ${ativarwpcachepremium}
    Click Element                                               ${ativarwpcachepremium}
    Sleep                                                       7

Configuração WP FASTEST CACHE E PREMIUM
    Go To                                                       ${website_url}/wp-admin/admin.php?page=wpfastestcacheoptions
    Wait Until Element Is Visible                               ${checkbox1}    
    Select Checkbox                                             ${checkbox1}
    Wait Until Element Is Visible                               ${checkbox2}
    Click Element                                               ${checkbox2}
    Wait Until Element Is Visible                               ${checkbox3}
    Click Element                                               ${checkbox3}
    Wait Until Element Is Visible                               ${checkbox4}
    Click Element                                               ${checkbox4}
    Wait Until Element Is Visible                               ${checkbox5}
    Click Element                                               ${checkbox5}
    Wait Until Element Is Visible                               ${checkbox6}
    Click Element                                               ${checkbox6}
    Wait Until Element Is Visible                               ${checkbox7}
    Click Element                                               ${checkbox7}
    Wait Until Element Is Visible                               ${checkbox8}
    Click Element                                               ${checkbox8}
    Wait Until Element Is Visible                               ${checkbox9}
    Click Element                                               ${checkbox9}
    Wait Until Element Is Visible                               ${checkbox10}
    Click Element                                               ${checkbox10}
    Wait Until Element Is Visible                               ${checkbox11}
    Click Element                                               ${checkbox11}
    Wait Until Element Is Visible                               ${checkbox12}
    Click Element                                               ${checkbox12}
    Wait Until Element Is Visible                               ${checkbox13}
    Click Element                                               ${checkbox13}
    Wait Until Element Is Visible                               ${checkbox14}
    Click Element                                               ${checkbox14}
    Wait Until Element Is Visible                               ${checkbox15}
    Click Element                                               ${checkbox15}
    Wait Until Element Is Visible                               ${checkbox16}
    Click Element                                               ${checkbox16}
    Wait Until Element Is Visible                               ${checkbox17}
    Click Element                                               ${checkbox17}
    Wait Until Element Is Visible                               ${checkbox18}
    Click Element                                               ${checkbox18}
    Wait Until Element Is Visible                               ${checkbox19}
    Click Element                                               ${checkbox19}
    Wait Until Element Is Visible                               ${submit}
    Click Element                                               ${submit}


