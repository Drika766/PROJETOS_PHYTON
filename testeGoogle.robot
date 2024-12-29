*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}    https://www.google.com
${BROWSER}    Chrome

*** Test Cases ***
Acessar Google
    [Documentation]  Cenário: Dado que eu quero acessar o Google
                      Quando eu abrir o navegador
                      Então eu devo acessar a página do Google
    [Tags]           acesso google
    Dado que eu quero acessar o Google
    Quando eu abrir o navegador
    Então eu devo acessar a página do Google

*** Keywords ***
Dado que eu quero acessar o Google
    [Documentation]  Define o contexto inicial do teste.
    No Operation

Quando eu abrir o navegador
    [Documentation]  Abre o navegador na URL definida.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Então eu devo acessar a página do Google
    [Documentation]  Verifica se a página do Google foi carregada com sucesso.
    Title Should Be    Google
    Close Browser
