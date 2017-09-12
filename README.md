# brktinit
Bob Beliveau    Sep 11 2017

This is a brkt-cli helper utility that logs you in and sets your BRKT_API_TOKEN
This is known to work on Windows 10. Not yet tested on other Windows versions.

USAGE:

brktinit.bat

No command line options.


PRE-REQUISITES:  

The brkt-cli requires you to first install python27, and then install the brkt-cli using pip install brkt-cli.  


OVERVIEW:

Intended for Windows users of brkt-cli, brktinit.bat is useful to run anytime you open a new command prompt and want to issue brkt-cli
commands, or if your brkt token has expired.

After installing Python27 and the brkt-cli, you need to setup your environment variables properly to be able to issue brkt-cli commands.

To setup your brkt-cli environment, you need to authenticate to brkt, and then set an environment variable named BRKT_API_TOKEN 
to the token that you get once you login to brkt.  This token is valid only for a short period (10 hrs), and is generally set within 
the command prompt window context you are currently using.  Once the token expires, or if you want to use a different command 
prompt window, you will need to re-uthenticate and set BRKT_API_TOKEN to the new api token again. This brktinit.bat does that 
quickly and easily.

brktinit.bat will prompt you to login to brkt and will set your BRKT_API_TOKEN. You can then issue any "brkt" commands.

This avoid you having to manually copy and paste the token value to the environment variable.
 
Before doing much with the brkt-cli, you still need to make sure that your keys for the different 
CSPs are properly loaded into environment variables per the user manual at: 
    AWS:                     https://mgmt.brkt.com/docs#brkt-cli-for-aws-configurations
 	  Google Cloud Platform:   https://mgmt.brkt.com/docs#brkt-cli-for-gcp-configurations
 	  VMWare ESX:              https://mgmt.brkt.com/docs#brkt-cli-for-esx-configurations
    
