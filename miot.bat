@echo off

# MODULAR INTERNET OF THINGS
# (c) Copyright Si Dunford, Jun 2020
SET VERSION=0.0.0
# https://github.com/automation-itspeedway-net/miot

echo MODULAR IoT / CLI
echo VER: %VERSION%
echo.

echo ** WINDOWS IS CURRENTLY UNSUPPORTED **
echo.

if /i "%1"=="--help" goto show_help
if /i "%1"=="-h" goto show_help
if /i "%1"=="/?" goto show_help

if /i "%1"=="disable" goto notimplemented
if /i "%1"=="enable" goto notimplemented
if /i "%1"=="start" goto notimplemented
if /i "%1"=="stop" goto notimplemented
if /i "%1"=="restart" goto notimplemented
if /i "%1"=="reload" goto notimplemented
if /i "%1"=="status" goto notimplemented

if /i "%1"=="install" goto notimplemented
if /i "%1"=="remove" goto notimplemented
if /i "%1"=="uninstall" goto notimplemented

:repl
echo ** REPL has not been implemented."
goto exit

:notimplemented
echo ** This feature is currently not implemented **
goto exit

:show_help()
{
    echo "  miot --help|-h|/?"
    echo "  miot install <module>"
    echo "  miot remove|uninstall <module>"
    echo "  miot enable <module>"
    echo "  miot disable <module>"
    echo "  miot start <module>"
    echo "  miot stop <module>"
    echo "  miot restart <module>"
    echo "  miot status <module>"
    rem miot replhelp noheader
}

:exit

