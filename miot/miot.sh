#!/bin/bash

# MODULAR INTERNET OF THINGS
# (c) Copyright Si Dunford, Jun 2020
VERSION = "0.2.1"
# https://github.com/automation-itspeedway-net/miot

echo "MODULAR IoT"
echo "VER: $VERSION"

show_help()
{
    echo "miot --help|-h|/?"
    echo "miot setup"
    echo "miot install <module>"
    echo "miot remove|uninstall <module>"
    echo "miot enable <module>"
    echo "miot disable <module>"
    echo "miot start <module>"
    echo "miot stop <module>"
    echo "miot restart <module>"
    echo "miot status <module>"
}


go_systemctl()
{
    sudo systemctl $1 miot_$2
}

go_repl()
{
    if [ ! -e ~/miot/venv/bin/miotrepl ]; then
        echo "Unknown command: $1"
        echo "- REPL has not been installed."
        echo "- Run 'miot setup' to install"
    else    
        cd ~/miot
        source ./venv/bin/activate
        shift
        miotrepl $@
    fi
}

go_install()
{
    if [ ! -d ~/miot/ ]; then
        mkdir ~/miot
    fi
    if [ ! "$2" = "" ]; then
        echo "Installing $2"
        cd ~/miot
        if ! git clone https://github.com/automation-itspeedway-net/miot_$2.git
        then
            echo >&2 "Failed to install"
            exit 1
        fi
        chmod u+rwx miot_$2/miot_$2.service
        sudo cp miot_$2/miot_$2.service /etc/systemd/system/
    else
        echo "Module not specified"
    fi
}

go_remove()
{
    if [ -d ~/miot/miot_$2 ]; then
        sudo systemctl stop miot_$2
        sudo systemctl disable miot_$2
        sudo rm /etc/systemd/system/miot_$2.service
        rm -r "~/miot/miot_$2/"
    fi
}

go_setup()
{
    if [ -d ~/miot ]; then
        echo "- Folder exists"
    else
        echo "- Creating folders"
        mkdir ~/miot
    fi
    cd ~/miot
    if [ -e ~/miot/venv/bin/python ]; then
        echo "- Virtual environment exists"
    else
        echo "- Building virtual environment"
        python3 -m venv venv
    fi
    source ./venv/bin/activate
    echo "- Installing core components"
    python -m pip install --upgrade miot
    echo "- Done"
}

while [ "$1" != "" ]; do
    case $1 in
        --help | -h | /? )
            show_help
            exit
            ;;
        disable | enable | start | stop | restart | reload | status )    
            go_systemctl
            exit
            ;;
        install )
            go_install
            exit
            ;;
        remove | uninstall )
            go_remove
            exit
            ;;
        setup )
            go_setup
            exit
            ;;
        * )
            go_repl
            exit
            ;;
    esac
    shift
done
