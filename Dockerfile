FROM ghcr.io/cirruslabs/flutter:3.19.0
WORKDIR /app
COPY . .
RUN flutter pub get
CMD ["flutter", "build", "apk", "--release"]
