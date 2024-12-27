from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
import time

# Inicializa o navegador
navegador = webdriver.Chrome()

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
time.sleep(10)

# Fecha o navegador
navegador.quit()
