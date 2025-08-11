# Gunakan Python 3.12 slim base image
FROM python:3.12-slim

# Install dependencies sistem yang dibutuhkan untuk build Pillow, uvloop, dll
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential libffi-dev libssl-dev libjpeg-dev zlib1g-dev libpng-dev libfreetype6-dev \
    liblcms2-dev libwebp-dev libtiff-dev libopenjp2-7-dev pkg-config ffmpeg git \
    && rm -rf /var/lib/apt/lists/*

# Set working directory dalam container
WORKDIR /app

# Salin semua file project ke dalam container
COPY . /app

# Upgrade pip, setuptools, wheel agar install paket berjalan lancar
RUN pip install --upgrade pip setuptools wheel

# Install paket berat terlebih dahulu secara manual
RUN pip install Pillow==9.4.0 uvloop==0.17.0

# Install sisa dependencies dari requirements.txt tanpa mengulang Pillow dan uvloop
RUN pip install -r requirements.txt --no-deps

# Jika aplikasi kamu pakai port web, expose portnya (ubah jika perlu)
EXPOSE 8080

# Jalankan modul utama userbot saat container start
CMD ["python", "-m", "PyroUbot"]
