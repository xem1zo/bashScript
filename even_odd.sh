#!/usr/bin/env bash

read -p "Введите целое число: " n

if ! [[ "$n" =~ ^-?[0-9]+$ ]]; then
  echo "Ошибка: нужно ввести целое число."
  exit 1
fi

if (( n % 2 == 0 )); then
  echo "Число $n — чётное."
else
  echo "Число $n — нечётное."
fi

