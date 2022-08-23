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
${submit}                   class:button-primary


*** Keywords ***
Processa WP CACHE
    # Baixar WP FASTEST CACHE
    # Entrar no plugin de url e fazer upload WP
    # Ativação WP FASTEST CACHE E PREMIUM
    Configuração WP FASTEST CACHE E PREMIUM

Baixar WP FASTEST CACHE
    Go To                   ${website_url}/wp-admin/plugin-install.php
    Sleep                   15
    Input Text              ${box_pesquisar}           ${plugin_wpcache}
    Sleep                   10
    Click Element           ${instalarwpcache}
    Sleep                   10

Entrar no plugin de url e fazer upload WP
    Sleep                   10
    Go To                   ${page_plugin_url}
    Sleep                   5
    Click Element           ${campo_url_plugin} 
    Input Text              ${campo_url_plugin}                 ${link_plugin_baixar}
    Sleep                   10
    Click Element           ${botao_plugin_upload} 
    Sleep                   10
    Go To                   ${website_url}/wp-admin/plugins.php

Ativação WP FASTEST CACHE E PREMIUM
    Sleep                   5
    Click Element           ${ativarwpcachepremium}
    Sleep                   5
    Click Element           ${ativarwpcache}
    Sleep                   5

Configuração WP FASTEST CACHE E PREMIUM
    Sleep                   3
    Go To                   ${website_url}/wp-admin/admin.php?page=wpfastestcacheoptions
    Sleep                   10
    Click Element           ${checkbox1}
    Sleep                   1
    Click Element           ${checkbox2}
    Sleep                   1
    Click Element           ${checkbox3}
    Sleep                   1
    Click Element           ${checkbox4}
    Sleep                   1
    Click Element           ${checkbox5}
    Sleep                   1
    Click Element           ${checkbox6}
    Sleep                   1
    Click Element           ${checkbox7}
    Sleep                   1
    Click Element           ${checkbox8}
    Sleep                   1
    Click Element           ${checkbox9}
    Sleep                   1
    Click Element           ${checkbox10}
    Sleep                   1
    Click Element           ${checkbox11}
    Sleep                   1
    Click Element           ${checkbox12}
    Sleep                   1
    Click Element           ${checkbox13}
    Sleep                   1
    Click Element           ${checkbox14}
    Sleep                   1
    Click Element           ${checkbox15}
    Sleep                   1
    Click Element           ${checkbox16}
    Sleep                   1
    Click Element           ${checkbox17}
    Sleep                   1
    Click Element           ${checkbox18}
    Sleep                   1
    Click Element           ${checkbox19}
    Sleep                   1
    Click Element           ${submit}


