@echo off
setlocal
set "APACHE_DIR=%~dp0.."
set "APACHE_DIR=%APACHE_DIR:\=/%"

@echo off
SETLOCAL ENABLEEXTENSIONS
if "%~1"=="" (
    echo Uso: a2dissite nombre-del-archivo.conf
    goto :eof
)
set "ENABLED=%APACHE_DIR%\conf\sites-enabled\%~1"
if not exist "%ENABLED%" (
    echo ERROR: No se encuentra "%ENABLED%"
    goto :eof
)
del "%ENABLED%"
echo Sitio deshabilitado: %~1
