Write-Host "Initializing Git repository..." -ForegroundColor Green
git init

Write-Host "Adding all files..." -ForegroundColor Yellow
git add .

Write-Host "Making commit..." -ForegroundColor Cyan
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

Write-Host "Commit completed!" -ForegroundColor Green
Read-Host "Press Enter to continue"
