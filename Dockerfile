FROM python:3.10-slim

WORKDIR /app

COPY oom_simulator.py .

# Установка stress для дополнительного тестирования
RUN apt-get update && apt-get install -y stress && rm -rf /var/lib/apt/lists/*

CMD ["python3", "oom_simulator.py", "--mode", "aggressive"]