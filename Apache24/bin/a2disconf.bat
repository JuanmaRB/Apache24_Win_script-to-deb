@echo off
SETLOCAL ENABLEEXTENSIONS
if "%~1"=="" (
    echo Uso: a2disconf nombre-del-archivo.conf
    goto :eof
)
set "ENABLED=C:\Apache24\conf\conf-enabled\%~1"
if not exist "%ENABLED%" (
    echo ERROR: No se encuentra "%ENABLED%"
    goto :eof
)
del "%ENABLED%"
echo Configuracion deshabilitada: %~1
