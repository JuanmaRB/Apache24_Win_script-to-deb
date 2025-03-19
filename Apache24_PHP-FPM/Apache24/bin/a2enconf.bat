@echo off
setlocal
set "APACHE_DIR=%~dp0.."
set "APACHE_DIR=%APACHE_DIR:\=/%"

@echo off
SETLOCAL ENABLEEXTENSIONS
if "%~1"=="" (
    echo Uso: a2enconf nombre-del-archivo.conf
    goto :eof
)
set "AVAILABLE=%APACHE_DIR%\conf\conf-available\%~1"
set "ENABLED=%APACHE_DIR%\conf\conf-enabled\%~1"
if not exist "%AVAILABLE%" (
    echo ERROR: No se encuentra "%AVAILABLE%"
    goto :eof
)
mklink "%ENABLED%" "%AVAILABLE%"
echo Configuracion habilitada: %~1
