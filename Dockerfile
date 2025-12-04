# Dockerfile для вызова OOM при сборке
FROM ubuntu:22.04

# 1. Устанавливаем Python и утилиты
RUN apt-get update && apt-get install -y python3

# 2. КОМАНДА КОТОРАЯ ВЫЗОВЕТ OOM - пытается выделить 2GB памяти
COPY oom_simulator.py /tmp/
RUN python3 /tmp/oom_simulator.py