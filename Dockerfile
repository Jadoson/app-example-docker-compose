FROM ubuntu:22.04

RUN apt-get update && apt-get install -y python3

COPY simulator.py /tmp/
RUN python3 /tmp/simulator.py