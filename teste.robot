*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Pesquisar Tutorial de Robot Framework
    Open Browser    https://www.google.com.br    chrome
    Maximize Browser Window
    Input Text    name:q    tutorial de Robot Framework
    Press Key    name:q    \\13  # Simula o Enter
    Sleep    10
    Close Browser
