#!/usr/bin/env bash

LENGTH=8

password=$(LC_ALL=C tr -dc 'A-Za-z0-9' < /dev/urandom | head -c "$LENGTH")
echo "Случайный пароль длиной $LENGTH символов: $password"

