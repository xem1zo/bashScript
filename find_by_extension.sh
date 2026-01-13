#!/usr/bin/env bash

if [[ -z "$1" ]]; then
  echo "Использование: $0 расширение"
  echo "Пример: $0 txt"
  exit 1
fi

ext="$1"

echo "Файлы с расширением .$ext в текущей директории и поддиректориях:"
find . -type f -name "*.${ext}"

