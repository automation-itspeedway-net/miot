# miot
Modular Internet of Things

STATUS:  PRE-ALPHA  ** UNSTABLE DO NOT INSTALL **
VERSION: Ver: 0.1.1
    - WARNING - Unstable development version
    - Not feature complete
    - Under development
    - Not ready for internal testing

# PREREQUISITES

* python 3
* pip
* git

# INSTALLATION

## Automated method:
(THIS IS CURRENTLY NOT IMPLEMENTED)

    pip -H install --upgrade miot
    miot setup

## Semi Automated method
- TESTED

    cd ~
    git clone https://github.com/automation-itspeedway-net/miot.git
    chmod +x miot/bin/miot
    sudo mv miot/bin/miot /usr/bin
    rm -r miot/*
    
    miot setup

## Manual method:

    cd ~    
    git clone https://github.com/automation-itspeedway-net/miot.git
    chmod +x miot/bin/miot
    sudo mv miot/bin/miot /usr/bin
    rm -r miot/*
    
    cd ~/miot
    python3 -m venv venv
    . ./venv/bin/activate
    pip install --upgrade miot


# CONFIGURING YOUR MQTT SERVER
This step is only required if you are installing MIOT on a different server than your MQTT broker or if you are using authentication (Which you should be).

    mqtt set mqtt.host 192.168.1.1
    mqtt set mqtt.port 1883
    mqtt set mqtt.username MyUsername
    mqtt set mqtt.password MyPassword
    
# HOW TO USE IT

miot is a command-line utility that is used to control and configure your home automation modules.

You can view the help screen by typing any one of the following:
    miot --help
    miot -h
    miot /?

The first time you use *miot* you should setup your system which will add additional commands and install the core modules:
    miot setup
    
The next set of commands are used to control the modules you have selected to be part of your system. You can choose to install/uninstall, enable/disable or start/stop their services.

    miot install <module>
    miot remove <module>
    miot uninstall <module>
    miot enable <module>
    miot disable <module>
    miot start <module>
    miot stop <module>
    miot restart <module>
    miot status <module>

The following commands are only available after you have run 'miot setup':

Configuration of miot is performed from the command line (not by editing huge configuration files):

    miot set <key> <value>
    miot get <key>
    
After configuring MQTT, you can send low level MQTT messages:

    miot send [host] <topic> <message>

You can also use *miot* to snoop on MQTT messages:

    miot snoop [host] <topic>

# CHANGE LOG

15 MAR 2019  0.0  Initial build/design
07 JUL 2020  0.1  PRE-ALPHA
    - added setup, install, remove|uninstall added
    - added call_cli()
    - added enable, disable
    - added start, stop, restart
    - added status
    - added call_repl()
10 JUL 2020  0.1.1  PRE-ALPHA
    - Replaced "-" with "_" in all module names
    - miot cli converted from shell script to python
    - Bug fixes

    
