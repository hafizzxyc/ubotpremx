FROM python:3.12-bullseye

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential libffi-dev libssl-dev libjpeg-dev zlib1g-dev libpng-dev libfreetype6-dev \
    liblcms2-dev libwebp-dev libtiff-dev libopenjp2-7-dev pkg-config ffmpeg git curl \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app

RUN pip install --upgrade pip setuptools wheel

RUN pip install Pillow==9.4.0
RUN pip install uvloop==0.17.0

RUN pip install -r requirements.txt --no-deps

CMD ["python", "-m", "PyroUbot"]
