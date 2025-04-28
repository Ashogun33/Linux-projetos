# Gerenciador de Usuários — Projeto Linux Essentials

## 📚 Descrição
Este projeto implementa um gerenciador básico de usuários em sistemas Linux, usando Bash Script.  
Permite a criação, adição a grupos, remoção e listagem de usuários e grupos.

## 🎯 Funcionalidades

- Criar novo usuário (`useradd`, `passwd`)
- Adicionar usuário a grupo existente (`usermod -aG`)
- Remover usuário e sua home directory (`userdel -r`)
- Listar usuários do sistema (`awk` no `/etc/passwd`)
- Listar grupos existentes (`cut` no `/etc/group`)

## 🛠️ Comandos principais utilizados

```bash
useradd
passwd
usermod -aG
userdel -r
awk
cut
