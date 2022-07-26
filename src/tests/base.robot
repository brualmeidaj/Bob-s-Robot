*** Settings ***
Library         ../app.py
Library         SeleniumLibrary
Resource        ./functions/login_functions.robot
Resource        ./functions/browser_functions.robot
Resource        ./functions/renameplugin_functions.robot
Resource        ./functions/404plugin_functions.robot
Resource        ./functions/cimysmtp_functions.robot  