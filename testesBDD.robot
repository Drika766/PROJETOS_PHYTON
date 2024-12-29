*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://www.google.com
${SEARCH_TERM}    inteligência artificial
${BROWSER}        Chrome
${WAIT_TIME}      10

*** Test Cases ***
Pesquisa Sobre Inteligência Artificial
    [Documentation]  Como um usuário, quero pesquisar sobre inteligência artificial no Google.
    [Tags]           pesquisa google
    Abrir Navegador e Acessar Google
    Realizar Pesquisa
    Esperar Resultado e Fechar

*** Keywords ***
Abrir Navegador e Acessar Google
    [Documentation]  Abre o navegador e acessa o Google.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Realizar Pesquisa
    [Documentation]  Realiza a pesquisa sobre inteligência artificial.
    Input Text    name:q    ${SEARCH_TERM}
    Press Keys    name:q    ENTER

Esperar Resultado e Fechar
    [Documentation]  Espera 10 segundos e fecha o navegador.
    Sleep    ${WAIT_TIME}
    Close Browser
