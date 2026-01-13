#!/usr/bin/env bash

read -p "Введите ваше имя: " username

if [[ -z "$username" ]]; then
  echo "Вы не ввели имя."
else
  echo "Привет, $username!"
fi

