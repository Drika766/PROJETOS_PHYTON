*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Pesquisar Tutorial de Robot Framework
    Open Browser    https://www.google.com.br    chrome
    Maximize Browser Window
    Input Text    name=q    tutorial de Robot Framework
    Press Key    name=q    \\13  # Simula o Enter
    Sleep    10
    # Abre uma nova aba e acessa o formulário
    Execute Javascript    window.open('https://www.hastagtreinamentos.com/curso-python', '_blank');
    # Troca para a nova aba
    Switch Window    2
    # Preenche o formulário
    Input Text    id=firstname    Adriana de Fatima
    Input Text    id=email    adrianadefatimamartins30@gmail.com
    Input Text    id=phone    999999999
    Sleep    5
    Close Browser
