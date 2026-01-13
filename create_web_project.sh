#!/usr/bin/env bash

read -p "Введите имя проекта (папки): " project_name

if [[ -z "$project_name" ]]; then
  echo "Ошибка: имя проекта не может быть пустым."
  exit 1
fi

mkdir -p "$project_name"/css "$project_name"/js

cat > "$project_name"/index.html << 'EOF'
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>My Project</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>Добро пожаловать в мой веб-проект!</h1>
    <script src="js/script.js"></script>
</body>
</html>
EOF

cat > "$project_name"/css/style.css << 'EOF'
body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
    margin: 0;
    padding: 20px;
}

h1 {
    color: #333;
}
EOF

cat > "$project_name"/js/script.js << 'EOF'
document.addEventListener('DOMContentLoaded', () => {
    console.log('Проект успешно загружен!');
});
EOF

echo "Структура проекта '$project_name' создана."

