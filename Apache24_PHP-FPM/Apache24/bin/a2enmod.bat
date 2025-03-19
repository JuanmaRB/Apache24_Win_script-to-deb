@echo off
setlocal
set "APACHE_DIR=%~dp0.."
set "APACHE_DIR=%APACHE_DIR:\=/%"

@echo off
setlocal
set "MOD_NAME=%~1"
if "%MOD_NAME%"=="" (
    echo Uso: a2enmod nombre_modulo.conf
    exit /b 1
)
set "SOURCE=%APACHE_DIR%\conf\mods-available\%MOD_NAME%"
set "TARGET=%APACHE_DIR%\conf\mods-enabled\%MOD_NAME%"

if exist "%SOURCE%" (
    mklink "%TARGET%" "%SOURCE%"
    echo Modulo habilitado: %MOD_NAME%
) else (
    echo El modulo %MOD_NAME% no existe en mods-available
)
