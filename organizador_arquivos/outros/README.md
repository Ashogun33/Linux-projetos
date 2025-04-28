📂 Projeto: Organizador de Arquivos
📜 Descrição

O Organizador de Arquivos é um script Bash simples e eficiente que organiza arquivos em pastas específicas com base em suas extensões.
Foi desenvolvido como parte dos estudos práticos em Linux Essentials, com foco em automação básica utilizando Shell Script.
🚀 Funcionalidades

    Organiza arquivos em categorias:

        Imagens (.jpg, .png)

        Documentos (.pdf, .docx)

        Músicas (.mp3, .wav)

        Outros (qualquer extensão não categorizada)

    Ignora automaticamente:

        O próprio script (organizador.sh)

        A pasta de logs e seus arquivos

    Gera logs detalhados de cada movimentação em arquivos separados dentro da pasta logs/

    Criação automática de pastas, caso não existam

🛠️ Como Usar

    Clonar o repositório (se já estiver no GitHub) ou navegar até o diretório onde o script está salvo.

    Dar permissão de execução ao script:

chmod +x organizador.sh

Executar o script:

    ./organizador.sh

    Resultado:

        Arquivos organizados em suas respectivas pastas.

        Logs gerados na pasta logs/ com data e hora da execução.

📂 Estrutura após execução

organizador_arquivos/
├── imagens/
├── documentos/
├── musicas/
├── outros/
├── logs/
│   ├── log_YYYY-MM-DD_HH-MM-SS.txt
├── organizador.sh

📋 Requisitos

    Sistema Linux ou WSL

    Bash Shell

🎯 Autor

Projeto desenvolvido por Vandilson A. de Jesus, como parte da Formação Técnica - Linux Essentials.
