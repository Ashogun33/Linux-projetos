#!/bin/bash

# Script de Backup Automático de Pastas (Flexível: Automático e Interativo)

# Definir a pasta de destino dos backups
DESTINO="$(pwd)/backups"

# Garantir que a pasta de backups existe
mkdir -p "$DESTINO"

# Verificar se foi passado argumento
if [ -n "$1" ]; then
  ORIGEM="$1"
else
  read -p "Digite o caminho absoluto da pasta que deseja fazer backup: " ORIGEM
fi

# Expandir ~ se for usado
ORIGEM="${ORIGEM/#\~/$HOME}"

# Verificar se a pasta existe
if [ ! -d "$ORIGEM" ]; then
  echo "Erro: A pasta '$ORIGEM' não existe."
  exit 1
fi

# Criar o nome do arquivo de backup com data e hora
DATA_HORA=$(date +"%Y-%m-%d_%H-%M-%S")
ARQUIVO_BACKUP="backup_${DATA_HORA}.tar.gz"

# Criar o backup
tar -czf "${DESTINO}/${ARQUIVO_BACKUP}" -C "$(dirname "$ORIGEM")" "$(basename "$ORIGEM")"

# Mensagem final
echo "Backup de '$ORIGEM' criado com sucesso em '$DESTINO/$ARQUIVO_BACKUP'"

