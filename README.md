# miot-core
Modular Internet of Things

STATUS:  PRE-ALPHA (UNSTABLE DEVELOPMENT VERSION)
VERSION: 0.1

!Pre-requisites

* python 3
* pip
* git
    
!Installation

Automated method:

    (THIS IS CURRENTLY NOT IMPLEMENTED)
        sudo apt-get install miot
        miot setup

Semi Automated method

    cd ~
    git clone https://github.com/automation-itspeedway-net/miot.git
    chmod +x miot/miot
    mv miot/miot /usr/bin
    
    miot setup

Manual method:

    cd ~    
    git clone https://github.com/automation-itspeedway-net/miot.git
    cd miot
    chmod +x miot
    mv ./miot /usr/bin
    
    python3 -m venv venv
    . ./venv/bin/activate
    pip install miot-core

    MODULAR INTERNET OF THINGS (miot)

CHANGE LOG
----------

15 MAR 2019  0.0  Initial build/design
07 JUL 2020  0.1  PRE-ALPHA
                    - setup, install, remove|uninstall added
                    - added call_cli()
                    - enable, disable, start, stop, restart and status added
                    - added call_repl()
                    
