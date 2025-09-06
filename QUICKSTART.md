# 🚀 Быстрый старт CaseCSGO

## Установка и запуск за 5 минут

### 1. Клонирование и установка

```bash
# Клонируйте репозиторий
git clone https://github.com/yourusername/casecsgo.git
cd casecsgo

# Установите зависимости
npm install
```

### 2. Настройка базы данных

#### Вариант A: Локальная PostgreSQL

```bash
# Установите PostgreSQL
# Создайте базу данных
createdb casecsgo

# Настройте переменные окружения
cp env.example .env.local
```

Отредактируйте `.env.local`:
```env
DATABASE_URL="postgresql://username:password@localhost:5432/casecsgo"
NEXTAUTH_URL="http://localhost:3000"
NEXTAUTH_SECRET="your-secret-key-here"
STEAM_API_KEY="your-steam-api-key"
```

#### Вариант B: Supabase (Рекомендуется)

1. Создайте проект на [supabase.com](https://supabase.com)
2. Скопируйте Connection String
3. Вставьте в `.env.local`

### 3. Настройка миграций

```bash
# Примените миграции
npx prisma db push

# Заполните тестовыми данными
npm run db:seed
```

### 4. Запуск проекта

```bash
# Запустите в режиме разработки
npm run dev
```

Откройте [http://localhost:3000](http://localhost:3000) в браузере.

## 🎮 Тестирование

### Тестовые данные

После запуска `npm run db:seed` будут созданы:

- **2 кейса** с 10 предметами каждый
- **3 промокода** для тестирования
- **RTP 85%** настроен для всех кейсов

### Промокоды

- `WELCOME100` - 100₽ бонус
- `FIRST50` - 50₽ бонус  
- `BONUS10` - 10% бонус

### Тестовые кейсы

1. **Operation Bravo Case** - 50₽
2. **Operation Phoenix Case** - 75₽

## 🔧 Настройка Steam API

1. Перейдите на [Steam Web API](https://steamcommunity.com/dev/apikey)
2. Войдите в свой Steam аккаунт
3. Введите домен: `http://localhost:3000`
4. Скопируйте ключ в `.env.local`

## 💳 Настройка платежей (Опционально)

### Юмани

1. Зарегистрируйтесь на [Юмани](https://yoomoney.ru/)
2. Создайте магазин
3. Получите Shop ID и Secret Key
4. Добавьте в `.env.local`

### СБП

1. Обратитесь в банк для подключения СБП
2. Получите Merchant ID и Secret Key
3. Добавьте в `.env.local`

## 🎯 Основные функции

### ✅ Реализовано

- [x] Авторизация через Steam
- [x] Система кейсов с RTP 85%
- [x] Инвентарь с продажей и выводом
- [x] Live-лента дропов
- [x] Топ-дропы
- [x] Адаптивный дизайн
- [x] Анимации открытия кейсов
- [x] Система редкостей предметов

### 🚧 В разработке

- [ ] Админ-панель
- [ ] Система платежей
- [ ] Апгрейды и контракты
- [ ] VIP система
- [ ] Реферальная программа
- [ ] Промокоды и бонусы

## 📱 Мобильная версия

Сайт полностью адаптивен и работает на:

- 📱 iPhone/Android
- 📱 Планшеты
- 💻 Десктопы
- 🖥 Большие экраны

## 🐛 Устранение неполадок

### Ошибка базы данных

```bash
# Проверьте подключение
npx prisma db push

# Сбросьте базу данных
npx prisma db push --force-reset
npm run db:seed
```

### Ошибка авторизации

1. Проверьте `STEAM_API_KEY` в `.env.local`
2. Убедитесь, что `NEXTAUTH_URL` правильный
3. Проверьте `NEXTAUTH_SECRET`

### Ошибка сборки

```bash
# Очистите кеш
rm -rf .next
npm run build
```

## 📊 Мониторинг

### Логи

```bash
# Просмотр логов в реальном времени
npm run dev

# Логи базы данных
npx prisma studio
```

### Производительность

- Используйте React DevTools
- Проверьте Network tab в браузере
- Мониторьте использование памяти

## 🚀 Деплой

### Vercel (Рекомендуется)

1. Подключите GitHub репозиторий к Vercel
2. Настройте переменные окружения
3. Деплой произойдет автоматически

Подробная инструкция в [DEPLOYMENT.md](./DEPLOYMENT.md)

## 🤝 Поддержка

Если у вас есть вопросы:

1. Создайте Issue в GitHub
2. Напишите в Telegram: @yourusername
3. Email: support@casecsgo.com

## 📄 Лицензия

MIT License - используйте свободно для коммерческих и некоммерческих проектов.

---

**Готово! Наслаждайтесь игрой! 🎮**
