from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
import time

# Inicializa o navegador
navegador = webdriver.Chrome()

try:
    # Abre o Google
    navegador.get("https://www.google.com.br")

    # Maximiza a janela do navegador
    navegador.maximize_window()

    # Encontra a barra de pesquisa e insere o termo
    barra_pesquisa = navegador.find_element(By.NAME, "q")
    barra_pesquisa.send_keys("tutorial de Robot Framework")

    # Simula a tecla Enter ou clica no botão pesquisar
    barra_pesquisa.send_keys(Keys.RETURN)

    # Aguarda alguns segundos para ver os resultados
    time.sleep(5)

    # Abre uma nova aba e acessa o formulário
    navegador.execute_script("window.open('https://www.hastagtreinamentos.com/curso-python', '_blank');")

    # Troca para a nova aba
    navegador.switch_to.window(navegador.window_handles[1])

    # Preenche o formulário
    navegador.find_element(By.ID, "firstname").send_keys("Adriana de Fatima")
    navegador.find_element(By.ID, "email").send_keys("adrianadefatimamartins30@gmail.com")
    navegador.find_element(By.ID, "phone").send_keys("61981576142")

    # Aguarda alguns segundos para ver os resultados
    time.sleep(5)

finally:
    # Fecha o navegador
    navegador.quit()
