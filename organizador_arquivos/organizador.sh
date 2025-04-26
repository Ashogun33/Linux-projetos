#!/bin/bash

# Script para organizar arquivos por extensão

# Cria pastas se ainda não existirem
mkdir -p imagens documentos musicas outros logs

# Define o nome do log baseado na data e hora
LOGFILE="logs/log_$(date +"%Y-%m-%d_%H-%M-%S").txt"

# Para cada arquivo no diretório atual
for arquivo in *; do
  # Se for um arquivo (não uma pasta)
  if [ -f "$arquivo" ]; then
    # Ignorar o próprio script e a pasta logs e seus conteúdos
    if [ "$arquivo" = "organizador.sh" ] || [[ "$arquivo" == logs/* ]]; then
      continue
    fi

    case "$arquivo" in
      *.jpg|*.png)
        mv "$arquivo" imagens/
        echo "[OK] MOVIDO: $arquivo → imagens/" >> "$LOGFILE"
        ;;
      *.pdf|*.docx)
        mv "$arquivo" documentos/
        echo "[OK] MOVIDO: $arquivo → documentos/" >> "$LOGFILE"
        ;;
      *.mp3|*.wav)
        mv "$arquivo" musicas/
        echo "[OK] MOVIDO: $arquivo → musicas/" >> "$LOGFILE"
        ;;
      *)
        mv "$arquivo" outros/
        echo "[OK] MOVIDO: $arquivo → outros/" >> "$LOGFILE"
        ;;
    esac
  fi
done

echo "Organização concluída! Consulte $LOGFILE para detalhes."
