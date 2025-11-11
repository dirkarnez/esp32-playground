@REM run as Administrator
@echo off
cd /d %~dp0
set DOWNLOADS_DIR=%USERPROFILE%\Downloads
set DOWNLOADS_DIR_LINUX=%DOWNLOADS_DIR:\=/%

set PYTHON_DIR=%DOWNLOADS_DIR%\python-3.10.8-amd64-portable

set IDF_PATH=^
%DOWNLOADS_DIR%\esp-idf;

set IDF_TOOLS_PATH=%USERPROFILE%\.espressif
set IDF_PYTHON_ENV_PATH=%IDF_TOOLS_PATH%\python_env

set PATH=^
%PYTHON_DIR%;^
%PYTHON_DIR%\Scripts;^
%DOWNLOADS_DIR%\PortableGit\bin;^
%DOWNLOADS_DIR%\esp-idf-tools-portable-v1.2\tools\bin;^
%IDF_PATH%\tools;^
%DOWNLOADS_DIR%\cmake-3.29.3-windows-x86_64\cmake-3.29.3-windows-x86_64\bin;

cmake.exe -G"Ninja" ^
-DCMAKE_BUILD_TYPE=Debug ^
-B./cmake-build &&^
cd cmake-build &&^
cmake --build . &&^
echo Successful build
