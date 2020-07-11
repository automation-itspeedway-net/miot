## Modular Home Automation CLI
## (c) Copyright Si Dunford, 2019

import setuptools
from setuptools.command.install import install

with open("README.md", "r") as fh:
    long_description = fh.read()
    
#Development Status :: 1 - Planning
#Development Status :: 2 - Pre-Alpha
#Development Status :: 3 - Alpha
#Development Status :: 4 - Beta
#Development Status :: 5 - Production/Stable
#Development Status :: 6 - Mature
#Development Status :: 7 - Inactive  

class CustomInstaller(install):
    def run(self):
        import os,sys
        
        print( "Installing MIoT CLI utility" )
        # Pre-Install
        
        # Install
        install.run(self)
        
        # Post-Install
        print( "- Platform: "+sys.platform )
        #if sys.platform in ['darwin', 'linux']:
        #    os.system('./linux_installer.sh')

setuptools.setup(
    name='miot',  
    version='0.1.1',
    author="Si Dunford",
    author_email="dunford.sj+miot@gmail.com",
    description="Modular Internet of Things",
    license='MIT',
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/automation-itspeedway-net/miot.git",
    packages=setuptools.find_packages(),
    classifiers=[
        "Development Status :: 2 - Pre-Alpha",
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
        "Intended Audience :: Other Audience",
        "Topic :: Scientific/Engineering :: Human Machine Interfaces"
        ],
    include_package_data=True,
    python_requires='>=3.6',
    cmdclass={
        'install':CustomInstaller
        }
)




