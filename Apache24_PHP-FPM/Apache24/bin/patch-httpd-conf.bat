@echo off
setlocal
set "APACHE_DIR=%~dp0.."
set "APACHE_DIR=%APACHE_DIR:\=/%"

@echo off
SETLOCAL
set "HTTPDCONF=%APACHE_DIR%\conf\httpd.conf"

findstr /C:"IncludeOptional \"C:/Apache24/sites-enabled/*.conf\"" "%HTTPDCONF%" >nul
if errorlevel 1 (
    echo IncludeOptional "C:/Apache24/sites-enabled/*.conf" >> "%HTTPDCONF%"
)

findstr /C:"IncludeOptional \"C:/Apache24/conf-enabled/*.conf\"" "%HTTPDCONF%" >nul
if errorlevel 1 (
    echo IncludeOptional "C:/Apache24/conf-enabled/*.conf" >> "%HTTPDCONF%"
)

findstr /C:"IncludeOptional \"C:/Apache24/mods-enabled/*.conf\"" "%HTTPDCONF%" >nul
if errorlevel 1 (
    echo IncludeOptional "C:/Apache24/mods-enabled/*.conf" >> "%HTTPDCONF%"
)

echo Cambios aplicados al httpd.conf
