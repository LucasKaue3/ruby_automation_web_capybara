Configuração de Ambiente para Automação Ruby
Este guia abordará as etapas necessárias para configurar o ambiente de automação Ruby na sua máquina.

Pré-requisitos
O projeto requer Ruby versão 3.1.3p185 com DevKit.
Navegador Google Chrome instalado.
Chrome Driver compatível com a versão do seu Chrome.
Configuração de ambiente
Instalação do Ruby: Faça o download do instalador Ruby [aqui](https://rubyinstaller.org/downloads/). Siga as instruções do instalador.

Instalação do Chrome Driver: Com base na versão do Chrome instalada em sua máquina, faça o download do Chrome Driver correspondente [aqui](https://chromedriver.chromium.org/downloads). Após o download, extraia o conteúdo do arquivo .zip para a pasta 'bin' do Ruby (ex: C:\Ruby31-x64\bin). Isso permitirá que a automação reconheça o Chrome Driver.

Instalação das dependências: Navegue até a raiz do projeto de automação (clonado do GitHub) via terminal. Primeiro, instale o gerenciador de dependências do Ruby com o comando gem install bundler. Depois disso, digite bundle install para instalar as bibliotecas especificadas no Gemfile do projeto.

Executando o teste
Para executar a automação, digite o seguinte comando na raiz do projeto: cucumber -p report.

Relatórios
Após a execução, os relatórios serão gerados dentro da pasta 'reports' no diretório do projeto. Existem dois modelos de relatórios que são gerados.
