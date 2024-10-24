@echo off
setlocal

echo Installing Python...

REM Download and install Python
set PYTHON_URL=https://www.python.org/ftp/python/3.13.0/python-3.13.0-amd64.exe
set PYTHON_INSTALLER=python-installer.exe

curl -L %PYTHON_URL% -o %PYTHON_INSTALLER%
start /wait %PYTHON_INSTALLER% /quiet InstallAllUsers=1 PrependPath=1 Include_test=0
del %PYTHON_INSTALLER%

echo Installing pip...
python -m ensurepip

echo Installing Node.js...

REM Download and install Node.js
set NODE_URL=https://nodejs.org/dist/v20.18.0/node-v20.18.0-x64.msi
set NODE_INSTALLER=node-installer.msi

curl -L %NODE_URL% -o %NODE_INSTALLER%
start /wait msiexec /i %NODE_INSTALLER% /quiet
del %NODE_INSTALLER%

echo Installing Vite...
npm install -g create-vite

echo Installation complete!
endlocal
pause