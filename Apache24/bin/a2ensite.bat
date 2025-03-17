@echo off
SETLOCAL ENABLEEXTENSIONS
if "%~1"=="" (
    echo Uso: a2ensite nombre-del-archivo.conf
    goto :eof
)
set "AVAILABLE=C:\Apache24\conf\sites-available\%~1"
set "ENABLED=C:\Apache24\conf\sites-enabled\%~1"
if not exist "%AVAILABLE%" (
    echo ERROR: No se encuentra "%AVAILABLE%"
    goto :eof
)
mklink "%ENABLED%" "%AVAILABLE%"
echo Sitio habilitado: %~1
