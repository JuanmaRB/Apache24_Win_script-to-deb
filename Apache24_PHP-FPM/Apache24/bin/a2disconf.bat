@echo off
setlocal
set "APACHE_DIR=%~dp0.."
set "APACHE_DIR=%APACHE_DIR:\=/%"

@echo off
SETLOCAL ENABLEEXTENSIONS
if "%~1"=="" (
    echo Uso: a2disconf nombre-del-archivo.conf
    goto :eof
)
set "ENABLED=%APACHE_DIR%\conf\conf-enabled\%~1"
if not exist "%ENABLED%" (
    echo ERROR: No se encuentra "%ENABLED%"
    goto :eof
)
del "%ENABLED%"
echo Configuracion deshabilitada: %~1
