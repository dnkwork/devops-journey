#!/bin/bash
# Перевіряємо, чи передав користувач аргумент (назву папки)
if [ -z "$1" ]; then
  echo "Помилка: Вкажи папку для архівування! Приклад: ./backup.sh practice"
  exit 1
fi

SOURCE_DIR=$1
BACKUP_NAME="backup_$(date +%Y%m%m_%H%M%S).tar.gz"

echo "Створюємо архів папки $SOURCE_DIR..."
tar -czf $BACKUP_NAME $SOURCE_DIR

echo "Архів успішно створено: $BACKUP_NAME"

