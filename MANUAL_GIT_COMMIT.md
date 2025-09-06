# Ручной коммит на Git

Поскольку есть проблемы с терминалом, выполните следующие команды вручную:

## Шаг 1: Откройте командную строку или PowerShell в папке проекта
Перейдите в папку `C:\Users\gambi\CaseCSGO`

## Шаг 2: Инициализируйте Git репозиторий
```bash
git init
```

## Шаг 3: Добавьте все файлы
```bash
git add .
```

## Шаг 4: Сделайте коммит
```bash
git commit -m "feat: Реализован полноценный функционал открытия кейсов CS:GO

- Добавлена реалистичная анимация крутки как на ForceDrop
- Реализована система редкости предметов с правильными весами
- Добавлены реальные предметы CS:GO (AK-47 Redline, AWP Dragon Lore, M4A4 Howl и др.)
- Создана горизонтальная прокрутка предметов с эффектом замедления
- Добавлены звуковые эффекты для крутки, открытия и завершения
- Реализована центральная подсветка выбранного предмета
- Добавлены визуальные эффекты: свечение, анимации, градиенты
- Создан API для работы с кейсами и предметами
- Обновлен интерфейс с кнопкой закрытия анимации
- Добавлена система взвешенного выбора предметов по редкости"
```

## Шаг 5: Подключите к GitHub (если еще не подключено)
```bash
git remote add origin https://github.com/YOUR_USERNAME/casecsgo.git
```

## Шаг 6: Загрузите на GitHub
```bash
git push -u origin main
```

## Альтернативный способ через GitHub Desktop:
1. Откройте GitHub Desktop
2. Выберите "Add an Existing Repository from your Hard Drive"
3. Выберите папку `C:\Users\gambi\CaseCSGO`
4. Нажмите "Publish repository" для загрузки на GitHub

## Что будет закоммичено:

### Новые файлы:
- `components/ui/SoundEffects.tsx` - звуковые эффекты
- `git_commit.bat` - bat файл для коммита
- `git_commit.ps1` - PowerShell скрипт
- `GIT_COMMIT_INSTRUCTIONS.md` - инструкции
- `MANUAL_GIT_COMMIT.md` - эти инструкции

### Обновленные файлы:
- `components/cases/CaseOpening.tsx` - анимация крутки
- `components/cases/CaseDetails.tsx` - обновлен интерфейс
- `app/api/cases/[id]/route.ts` - API кейсов
- `app/api/cases/[id]/open/route.ts` - API открытия
- `components/sections/CasesGrid.tsx` - сетка кейсов

### Функционал:
✅ Полноценная анимация крутки как на ForceDrop
✅ Система редкости предметов
✅ Звуковые эффекты
✅ Визуальные эффекты
✅ API для работы с кейсами
✅ Реальные предметы CS:GO
