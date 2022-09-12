*** Settings ***
Library         ../app.py
Library         SeleniumLibrary
Library         OperatingSystem
Resource        ./functions/login_functions.robot
Resource        ./browser_functions.robot
Resource        ./functions/plugins/renameplugin_functions.robot
Resource        ./functions/plugins/404plugin_functions.robot
Resource        ./functions/plugins/urlplugin_functions.robot 
Resource        ./functions/plugins/smtp_functions.robot  
Resource        ./functions/plugins/wpfastestcache_functions.robot
Resource        ./functions/config/config_discussion.robot
Resource        ./functions/plugins/database_plugin.robot
Resource        ./functions/plugins/functionsplugins.robot
Resource        ./functions/config/functionsconfig.robot
Resource        ./functions/plugins/exclude_plugins.robot
Resource        ./functions/plugins/exclude_pluginstwo.robot
Resource        ./functions/config/exludethemes.robot