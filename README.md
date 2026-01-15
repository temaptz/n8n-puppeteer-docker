# n8n с Puppeteer

Docker-контейнер для n8n с поддержкой Puppeteer для веб-автоматизации.

## Что это

- **n8n** - платформа для автоматизации рабочих процессов
- **Puppeteer** - управление браузером Chrome для веб-скрейпинга и автоматизации
- **Debian** - лёгкий базовый образ Linux

## Быстрый запуск

```bash
docker-compose up --build
```

n8n будет доступен по адресу: http://localhost:5678

## Особенности

- Node.js 22
- Chromium браузер для Puppeteer
- n8n-nodes-puppeteer для автоматизации браузера
- Сохранение данных в Docker volume
