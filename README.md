# Technika kompilacji

Instead of heavy VM using Docker images.

## Docker
Docker image with bison, flex and example programs


Run with:
```
docker build --rm . -t bison-image \
    && docker run --rm -ti -v "$(pwd)":/home bison-image
```
