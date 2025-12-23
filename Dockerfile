#версия питона
FROM python:3.11-slim

#дополнительная установка библиотек и зависимостей не требуется

#выбор рабочей директории
WORKDIR /app

#зависимости
COPY requirements.txt .

#установка pygame
RUN pip install --no-cache-dir pygame==2.5.0

#копирование игры Тетрис
COPY tetris.py .

#запуск игры тетрис
CMD ["python", "tetris.py"]
