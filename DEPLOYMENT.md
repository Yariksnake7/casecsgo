# Инструкция по деплою CaseCSGO

## 🚀 Быстрый деплой на Vercel

### 1. Подготовка репозитория

1. Создайте новый репозиторий на GitHub
2. Загрузите код в репозиторий:
```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/yourusername/casecsgo.git
git push -u origin main
```

### 2. Настройка Vercel

1. Перейдите на [vercel.com](https://vercel.com)
2. Войдите через GitHub
3. Нажмите "New Project"
4. Выберите ваш репозиторий
5. Настройте проект:
   - **Framework Preset**: Next.js
   - **Root Directory**: ./
   - **Build Command**: `npm run build`
   - **Output Directory**: `.next`

### 3. Настройка переменных окружения

В настройках проекта Vercel добавьте следующие переменные:

```env
# Database
DATABASE_URL=postgresql://username:password@host:port/database

# NextAuth
NEXTAUTH_URL=https://your-domain.vercel.app
NEXTAUTH_SECRET=your-random-secret-key

# Steam API
STEAM_API_KEY=your-steam-api-key

# Payment Systems
YUMAONEY_SHOP_ID=your-yumoney-shop-id
YUMAONEY_SECRET_KEY=your-yumoney-secret

# SBP
SBP_MERCHANT_ID=your-sbp-merchant-id
SBP_SECRET_KEY=your-sbp-secret

# Admin
ADMIN_STEAM_ID=your-steam-id-for-admin-access
```

### 4. Настройка базы данных

#### Вариант 1: Supabase (Рекомендуется)

1. Создайте аккаунт на [supabase.com](https://supabase.com)
2. Создайте новый проект
3. Перейдите в Settings > Database
4. Скопируйте Connection String
5. Вставьте в `DATABASE_URL` в Vercel

#### Вариант 2: Railway

1. Создайте аккаунт на [railway.app](https://railway.app)
2. Создайте новый проект
3. Добавьте PostgreSQL
4. Скопируйте Connection String
5. Вставьте в `DATABASE_URL` в Vercel

### 5. Применение миграций

После деплоя выполните миграции:

```bash
# Подключитесь к базе данных
npx prisma db push

# Заполните тестовыми данными
npx prisma db seed
```

### 6. Получение Steam API ключа

1. Перейдите на [Steam Web API](https://steamcommunity.com/dev/apikey)
2. Войдите в свой Steam аккаунт
3. Введите домен: `https://your-domain.vercel.app`
4. Скопируйте полученный ключ в `STEAM_API_KEY`

## 🔧 Настройка платежей

### Юмани

1. Зарегистрируйтесь на [Юмани](https://yoomoney.ru/)
2. Перейдите в раздел "Прием платежей"
3. Создайте магазин
4. Получите Shop ID и Secret Key
5. Добавьте в переменные окружения

### СБП

1. Обратитесь в ваш банк для подключения СБП
2. Получите Merchant ID и Secret Key
3. Добавьте в переменные окружения

## 📱 Настройка домена

### Кастомный домен

1. В настройках проекта Vercel перейдите в "Domains"
2. Добавьте ваш домен
3. Настройте DNS записи согласно инструкциям Vercel
4. Обновите `NEXTAUTH_URL` на новый домен

## 🔒 Безопасность

### SSL сертификат

Vercel автоматически предоставляет SSL сертификат для всех доменов.

### Защита от DDoS

Vercel предоставляет базовую защиту от DDoS. Для дополнительной защиты рассмотрите Cloudflare.

## 📊 Мониторинг

### Vercel Analytics

1. Включите Vercel Analytics в настройках проекта
2. Отслеживайте производительность и ошибки

### Логи

1. Перейдите в раздел "Functions" в Vercel
2. Просматривайте логи выполнения функций

## 🚨 Устранение неполадок

### Ошибка базы данных

1. Проверьте правильность `DATABASE_URL`
2. Убедитесь, что база данных доступна
3. Проверьте миграции

### Ошибка авторизации

1. Проверьте `NEXTAUTH_SECRET`
2. Убедитесь, что `NEXTAUTH_URL` правильный
3. Проверьте `STEAM_API_KEY`

### Ошибка платежей

1. Проверьте настройки платежных систем
2. Убедитесь, что все ключи правильные
3. Проверьте логи в консоли

## 📈 Масштабирование

### Увеличение лимитов

1. **Vercel Pro**: $20/месяц за команду
   - Увеличенные лимиты функций
   - Приоритетная поддержка
   - Аналитика

2. **Vercel Enterprise**: По запросу
   - Неограниченные лимиты
   - SLA
   - Приоритетная поддержка

### Оптимизация базы данных

1. Используйте индексы для часто запрашиваемых полей
2. Настройте connection pooling
3. Рассмотрите использование Redis для кеширования

## 🔄 Обновления

### Автоматические обновления

При push в main ветку Vercel автоматически пересоберет и задеплоит проект.

### Ручные обновления

1. Внесите изменения в код
2. Сделайте commit и push
3. Vercel автоматически задеплоит изменения

## 📞 Поддержка

Если у вас возникли проблемы:

1. Проверьте логи в Vercel Dashboard
2. Создайте Issue в GitHub репозитории
3. Обратитесь в поддержку Vercel

---

**Удачного деплоя! 🚀**
