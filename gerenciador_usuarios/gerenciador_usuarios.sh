#!/bin/bash

# Gerenciador de Usuários - Projeto Linux Essentials

while true; do
  echo "========= Gerenciador de Usuários ========="
  echo "1. Criar novo usuário"
  echo "2. Adicionar usuário a grupo"
  echo "3. Remover usuário"
  echo "4. Listar usuários do sistema"
  echo "5. Listar grupos existentes"
  echo "6. Sair"
  read -p "Escolha uma opção: " opcao

  case $opcao in
    1)
      read -p "Digite o nome do novo usuário: " usuario
      sudo useradd "$usuario"
      sudo passwd "$usuario"
      echo "Usuário '$usuario' criado com sucesso!"
      ;;
    2)
      read -p "Digite o nome do usuário: " usuario
      read -p "Digite o nome do grupo: " grupo
      sudo usermod -aG "$grupo" "$usuario"
      echo "Usuário '$usuario' adicionado ao grupo '$grupo'."
      ;;
    3)
      read -p "Digite o nome do usuário a ser removido: " usuario
      sudo userdel -r "$usuario"
      echo "Usuário '$usuario' removido com sucesso!"
      ;;
    4)
      echo "Usuários do sistema:"
      awk -F: '$3 >= 1000 {print $1}' /etc/passwd
      ;;
    5)
      echo "Grupos do sistema:"
      cut -d: -f1 /etc/group
      ;;
    6)
      echo "Saindo do Gerenciador..."
      break
      ;;
    *)
      echo "Opção inválida! Tente novamente."
      ;;
  esac

  echo "" # Linha em branco para organizar a saída
done
