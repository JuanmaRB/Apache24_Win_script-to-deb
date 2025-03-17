@echo off
SETLOCAL
set "HTTPDCONF=C:\Apache24\conf\httpd.conf"

findstr /C:"IncludeOptional \"C:/Apache24/conf/sites-enabled/*.conf\"" "%HTTPDCONF%" >nul
if errorlevel 1 (
    echo IncludeOptional "C:/Apache24/conf/sites-enabled/*.conf" >> "%HTTPDCONF%"
)

findstr /C:"IncludeOptional \"C:/Apache24/conf/conf-enabled/*.conf\"" "%HTTPDCONF%" >nul
if errorlevel 1 (
    echo IncludeOptional "C:/Apache24/conf/conf-enabled/*.conf" >> "%HTTPDCONF%"
)

findstr /C:"IncludeOptional \"C:/Apache24/conf/mods-enabled/*.conf\"" "%HTTPDCONF%" >nul
if errorlevel 1 (
    echo IncludeOptional "C:/Apache24/conf/mods-enabled/*.conf" >> "%HTTPDCONF%"
)

echo Cambios aplicados al httpd.conf
