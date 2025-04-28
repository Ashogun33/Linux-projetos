#!/bin/bash

# Monitor de Processos e Controle de Serviços - Projeto Linux Essentials

while true; do
  echo "========= Monitor de Processos e Serviços ========="
  echo "1. Listar processos ativos"
  echo "2. Buscar processo por nome"
  echo "3. Matar processo por PID"
  echo "4. Ver status de um serviço"
  echo "5. Iniciar um serviço"
  echo "6. Parar um serviço"
  echo "7. Sair"
  read -p "Escolha uma opção: " opcao

  case $opcao in
    1)
      ps aux
      ;;
    2)
      read -p "Digite o nome do processo: " nome_processo
      ps aux | grep "$nome_processo" | grep -v grep
      ;;
    3)
      read -p "Digite o PID do processo: " pid
      sudo kill "$pid"
      echo "Processo $pid terminado."
      ;;
    4)
      read -p "Digite o nome do serviço: " servico
      sudo systemctl status "$servico"
      ;;
    5)
      read -p "Digite o nome do serviço: " servico
      sudo systemctl start "$servico"
      echo "Serviço $servico iniciado."
      ;;
    6)
      read -p "Digite o nome do serviço: " servico
      sudo systemctl stop "$servico"
      echo "Serviço $servico parado."
      ;;
    7)
      echo "Saindo do Monitor..."
      break
      ;;
    *)
      echo "Opção inválida! Tente novamente."
      ;;
  esac

  echo "" # Linha em branco para separar as saídas
done
