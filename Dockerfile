FROM python:3.12-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential libffi-dev libssl-dev libjpeg-dev zlib1g-dev libpng-dev libfreetype6-dev \
    liblcms2-dev libwebp-dev libtiff-dev libopenjp2-7-dev pkg-config ffmpeg git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app

RUN pip install --upgrade pip setuptools wheel
RUN pip install -r requirements.txt

CMD ["python", "-m", "PyroUbot"]
