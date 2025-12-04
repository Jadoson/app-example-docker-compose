FROM python:3.10-slim

WORKDIR /app

# Копируем наш файл
COPY oom_simulator.py /app/

# Установка stress для дополнительного тестирования
RUN apt-get update && apt-get install -y stress procps && \
    rm -rf /var/lib/apt/lists/*

# Устанавливаем правильные разрешения
RUN chmod +x /app/oom_simulator.py

# Можно запустить разными способами:
# CMD ["python3", "oom_simulator.py"]
# Или просто оставить shell для ручного запуска
CMD ["sleep", "infinity"]