# Monitoramento de Preços do Kindle na Amazon

## Descrição

Este projeto realiza a automação de navegação na Amazon para coletar o preço de um Kindle e armazená-lo em uma planilha Excel. A cada nova execução, o preço é atualizado na planilha e um gráfico de linha é gerado para monitorar a variação dos preços ao longo do tempo. O bot é gerenciado pelo BotMaestro e utiliza a biblioteca `openpyxl` para manipulação dos dados em Excel.

## Técnicas Interessantes

- **Automação de Navegação Web**: O projeto utiliza o `BotCity Web` para simular a interação com o navegador, acessando a página do produto e coletando o valor. Para mais informações, consulte a [documentação do BotCity Web](https://documentation.botcity.dev/).
- **Manipulação de Planilhas com `openpyxl`**: A biblioteca `openpyxl` permite abrir, modificar e salvar planilhas Excel, além de gerar gráficos de linha com base nos dados registrados. Veja mais sobre `openpyxl` na [documentação](https://openpyxl.readthedocs.io/).
- **Uso de `BotMaestro` para Gerenciamento de Automação**: O `BotMaestro` é utilizado para orquestrar a execução do bot, garantindo monitoramento e controle das tarefas. Saiba mais na [documentação do BotMaestro](https://documentation.botcity.dev/projects/maestro/).

## Tecnologias Utilizadas

- [BotCity Web](https://botcity.dev/): Framework de automação RPA para navegação web.
- [webdriver-manager](https://pypi.org/project/webdriver-manager/): Automatiza o gerenciamento do ChromeDriver.
- [openpyxl](https://openpyxl.readthedocs.io/): Biblioteca Python para manipulação de arquivos Excel.
- [BotMaestro](https://botcity.dev/maestro): Plataforma para orquestração e monitoramento de automações RPA.

## Estrutura do Projeto

```bash
/
├── resources/
│   ├── error.png                # Captura de tela de erro durante a execução
│   ├── monitoramentoKindle.xlsx  # Planilha Excel para salvar preços e datas
│   └── start.png                # Imagem usada durante a execução
├── .gitignore                    # Arquivo para ignorar arquivos no controle de versão
├── bot.py                        # Código principal do bot
├── build.bat                     # Script de construção para Windows
├── build.ps1                     # Script de construção para PowerShell
├── build.sh                      # Script de construção para Linux/macOS
├── desafio10_monitoramento_preços.botproj  # Arquivo de projeto do BotCity
└── requirements.txt              # Arquivo de dependências do Python
```

- **`resources/error.png`**: Captura de tela gerada em caso de falha durante a execução.
- **`resources/monitoramentoKindle.xlsx`**: Planilha Excel usada para armazenar os preços coletados e gerar o gráfico de variação de preços.
- **`bot.py`**: Contém a lógica principal do bot, incluindo o código para acessar a Amazon, coletar o preço e gerar o gráfico.

## Como Funciona

1. O bot utiliza o `BotCity Web` para acessar a página do produto Kindle na Amazon.
2. O preço do produto é extraído e armazenado na planilha Excel (`monitoramentoKindle.xlsx`), juntamente com a data da coleta.
3. A cada execução, o gráfico é atualizado com a variação de preços ao longo do tempo.
4. Em caso de erro, uma captura de tela é salva no arquivo `error.png`.
