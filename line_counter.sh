#!/usr/bin/env bash

if [[ -z "$1" ]]; then
  echo "Использование: $0 путь_к_файлу"
  exit 1
fi

file="$1"

if [[ ! -f "$file" ]]; then
  echo "Ошибка: файл '$file' не найден."
  exit 1
fi

lines=$(wc -l < "$file")
echo "Количество строк в файле '$file': $lines"

