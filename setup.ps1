
# Настройка Git Hooks для проекта

Write-Host "Настройка Git Hooks..." -ForegroundColor Cyan

# Указываем Git папку с хуками
git config core.hooksPath .githooks

if ($LASTEXITCODE -ne 0) {
    Write-Host "Ошибка настройки Git Hooks!" -ForegroundColor Red
    exit 1
}

Write-Host "Git Hooks успешно настроены!" -ForegroundColor Green

# Проверяем настройку
git config --get core.hooksPath
