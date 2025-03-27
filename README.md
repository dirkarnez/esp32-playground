esp32-playground
================
Using [espressif/esp-idf-ci-action: GitHub Action for ESP32 CI](https://github.com/espressif/esp-idf-ci-action)
- > `/app/dirkarnez/esp32-playground/build/hello_world.bin`

### Local development using Docker
- [espressif/idf - Docker Image | Docker Hub](https://hub.docker.com/r/espressif/idf)
  - `docker run --rm -v $PWD:/project -w /project espressif/idf:latest idf.py build`
### Notes
- `esp-idf` = Espressif IoT Development Framework

### Boards
- AI-Thinker
  - should based on [espressif/arduino-esp32 at 2.0.17](https://github.com/espressif/arduino-esp32/tree/2.0.17)

### CICD
- [espressif/idf-ci: The python library for CI/CD of ESP-IDF projects](https://github.com/espressif/idf-ci)
- [API Reference — idf-build-apps documentation](https://docs.espressif.com/projects/idf-build-apps/en/latest/references/api/modules.html)

### Tutorials
- [CI/CD（基于ESP-IDF）_gitlab espidf cicd-CSDN博客](https://blog.csdn.net/qq_40773212/article/details/134939588)
