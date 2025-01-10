FROM python:3.11-slim

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install ffmpeg -y

WORKDIR /app
COPY . /app

RUN pip3 install --no-cache-dir -r requirements.txt
CMD ["python3", "bot.py"]
