esp32-playground
================
Using [espressif/esp-idf-ci-action: GitHub Action for ESP32 CI](https://github.com/espressif/esp-idf-ci-action)
- > `/app/dirkarnez/esp32-playground/build/hello_world.bin`

### Local development using Docker
- [espressif/idf - Docker Image | Docker Hub](https://hub.docker.com/r/espressif/idf)
  - `docker run --rm -v $PWD:/project -w /project espressif/idf:latest idf.py build`
  - ```bash
    #!/bin/bash
    export PATH="/usr/local/bin:/usr/bin:/bin:/mingw64/bin"
    export PATH="$PATH:/C/Program Files/Docker/Docker/resources/bin"
    export PATH="$PATH:$(cygpath -u $USERPROFILE)/Downloads/cmake-3.26.1-windows-x86_64/bin"
    export PATH="$PATH:$(cygpath -u $USERPROFILE)/Downloads/python-3.10.8-amd64-portable"
    
    target="esp32s2"
    export IDF_TARGET=$(echo "$target" | tr '[:upper:]' '[:lower:]' | tr -d '_-')
    
    docker run -t \
    -e IDF_TARGET="${IDF_TARGET}" \
    -v "./:/app/code" \
    -w "/app/code" \
    espressif/idf:latest \
    /bin/bash -c 'git config --global --add safe.directory "*" && idf.py build'
    
    read -p "done"
    ```

### Setup
- [Standard Setup of Toolchain for Windows - ESP32 - — ESP-IDF Programming Guide v5.5.1 documentation](https://docs.espressif.com/projects/esp-idf/en/stable/esp32/get-started/windows-setup.html)

### CLI
- [IDF Frontend - idf.py - ESP32 - — ESP-IDF Programming Guide v5.5.1 documentation](https://docs.espressif.com/projects/esp-idf/en/stable/esp32/api-guides/tools/idf-py.html)

  
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
