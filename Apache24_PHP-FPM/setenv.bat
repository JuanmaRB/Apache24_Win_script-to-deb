@echo off
setlocal
REM Script para definir ruta base de Apache automáticamente
set "APACHE_DIR=%~dp0Apache24"
set "APACHE_DIR=%APACHE_DIR:\=/%"
echo APACHE_DIR definido como: %APACHE_DIR%
