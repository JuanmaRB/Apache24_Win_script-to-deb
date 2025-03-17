@echo off
setlocal
set "MOD_NAME=%~1"
if "%MOD_NAME%"=="" (
    echo Uso: a2dismod nombre_modulo.conf
    exit /b 1
)
set "TARGET=%~dp0\..\conf\mods-enabled\%MOD_NAME%"

if exist "%TARGET%" (
    del "%TARGET%"
    echo Modulo deshabilitado: %MOD_NAME%
) else (
    echo El modulo %MOD_NAME% no esta habilitado
)
