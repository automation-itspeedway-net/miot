@echo off

# MODULAR INTERNET OF THINGS / SETUP
# (c) Copyright Si Dunford, Jun 2020
SET VERSION=0.0.0
# https://github.com/automation-itspeedway-net/miot

echo MODULAR IoT / SETUP
echo VER: %VERSION%
echo.

echo ** WINDOWS IS CURRENTLY UNSUPPORTED **
echo.

rem if /i "%1"=="--help" goto show_help
rem if /i "%1"=="-h" goto show_help
rem if /i "%1"=="/?" goto show_help

if /i "%1"=="" goto go_setup
if /i "%1"=="setup" goto go_setup
if /i "%1"=="install" goto go_setup
if /i "%1"=="remove" goto go_remove
if /i "%1"=="uninstall" goto go_remove
echo - Unknown command '%1'

goto exit

:show_help
goto exit

:go_remove
echo ** This feature is currently not implemented **
goto exit

:go_setup
echo ** This feature is currently not implemented **
rem copy %~dp0\miot.bat ????
goto exit

:exit
