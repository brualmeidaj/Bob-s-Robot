*** Settings ***
Library         ../app.py
Library         SeleniumLibrary
Resource        ./functions/plugins/login_functions.robot
Resource        ./functions/plugins/browser_functions.robot
Resource        ./functions/plugins/renameplugin_functions.robot
Resource        ./functions/plugins/404plugin_functions.robot
Resource        ./functions/plugins/urlplugin_functions.robot 
Resource        ./functions/plugins/smtp_functions.robot  