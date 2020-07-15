# miot
Modular Internet of Things

STATUS:  PRE-ALPHA  ** UNSTABLE DO NOT INSTALL **
VERSION: Ver: 0.2.0
    - WARNING - Unstable development version
    - Not feature complete
    - Under development
    - Not ready for internal testing

# PLATFORMS

    - Linix (Mint)  -   tbc
    - Linux (Other) -   Untested
    - Raspbarian    -   tbc
    - Windows       -   Currently Unsupported
    
# PREREQUISITES

    * python 3
    * pip
    * git

# INSTALLATION

    cd ~
    git clone https://github.com/automation-itspeedway-net/miot.git
    miot/setup

# UPGRADE

    cd ~/miot
    git pull
    setup
    
# CONFIGURE MQTT SERVER
This step is only required if you are installing MIOT on a different server than your MQTT broker or if you are using authentication (Which you should be).

    miot set mqtt.host 192.168.1.1
    miot set mqtt.port 1883
    miot set mqtt.username MyUsername
    miot set mqtt.password MyPassword
    
# HOW TO USE IT

miot is a command-line utility that is used to control and configure your home automation modules.

You can view the help screen by typing any one of the following:
    miot --help
    miot -h
    miot /?

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

# DEVELOPMENT LOG
DATE         VER    STATUS
15 MAR 2019  0.0    Initial Outline
07 JUL 2020  0.1    PRE-ALPHA
10 JUL 2020  0.1.1  PRE-ALPHA
12 JUL 2020  0.1.2  PRE-ALPHA

    
