*** Settings ***
Library         ../app.py
Library         SeleniumLibrary
Resource        ./functions/plugins/login_functions.robot
Resource        ./browser_functions.robot
Resource        ./functions/plugins/renameplugin_functions.robot
Resource        ./functions/plugins/404plugin_functions.robot
Resource        ./functions/plugins/urlplugin_functions.robot 
Resource        ./functions/plugins/smtp_functions.robot  
Resource        ./functions/plugins/wpfastestcache_functions.robot
Resource        ./functions/config/config_leitura.robot
Resource        ./functions/config/linkspermanentes.robot
Resource        ./functions/brokenlinkchecker.robot
Resource        ./functions/plugins/database_plugin.robot
Resource        ./functions/plugins/functionsplugins.robot
Resource        ./functions/config/functionsconfig.robot