# Инструкция по загрузке на GitHub

## Шаг 1: Установите Git
Если Git не установлен, скачайте его с https://git-scm.com/download/win

## Шаг 2: Инициализируйте репозиторий
Откройте командную строку в папке проекта и выполните:

```bash
git init
git add .
git commit -m "Initial commit: CaseCSGO - CS:GO case opening website"
```

## Шаг 3: Создайте репозиторий на GitHub
1. Перейдите на https://github.com
2. Нажмите "New repository"
3. Название: `casecsgo`
4. Описание: `CS:GO case opening website with Steam auth and payments`
5. Выберите "Public" или "Private"
6. НЕ добавляйте README, .gitignore или лицензию (они уже есть)
7. Нажмите "Create repository"

## Шаг 4: Подключите локальный репозиторий к GitHub
```bash
git remote add origin https://github.com/YOUR_USERNAME/casecsgo.git
git branch -M main
git push -u origin main
```

## Шаг 5: Настройте деплой на Vercel
1. Перейдите на https://vercel.com
2. Войдите через GitHub
3. Нажмите "New Project"
4. Выберите репозиторий `casecsgo`
5. Настройте переменные окружения:
   - `DATABASE_URL` - ссылка на PostgreSQL
   - `NEXTAUTH_SECRET` - случайная строка
   - `STEAM_API_KEY` - ваш Steam API ключ
   - Остальные переменные для платежей
6. Нажмите "Deploy"

## Готово! 🎉
Ваш сайт будет доступен по адресу: https://your-project.vercel.app
