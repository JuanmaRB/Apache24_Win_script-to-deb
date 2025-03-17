@echo off
SETLOCAL ENABLEEXTENSIONS
if "%~1"=="" (
    echo Uso: a2enconf nombre-del-archivo.conf
    goto :eof
)
set "AVAILABLE=C:\Apache24\conf\conf-available\%~1"
set "ENABLED=C:\Apache24\conf\conf-enabled\%~1"
if not exist "%AVAILABLE%" (
    echo ERROR: No se encuentra "%AVAILABLE%"
    goto :eof
)
mklink "%ENABLED%" "%AVAILABLE%"
echo Configuracion habilitada: %~1
