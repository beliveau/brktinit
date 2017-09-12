@echo off
:: brktinit.bat - makes setting the BRKT_API_TOKEN very easy in windows systems
:: This is know to work on Windows 10. Not yet tested on other Windows versions.
:: 
:: Once you have installed python27, and the brkt-cli, you still need to setup your environment to be able to issue commands. 
::
:: To setup your environment, you will need to authenticate to brkt, and then set an environment variable named BRKT_API_TOKEN 
:: to the token that you get once you login.  This token is valid only for a short period (10 hrs), and is generally set within 
:: the command prompt window context you are currently using.  Once the token expires, or if you want to use a different command 
:: prompt window, you will need to re-uthenticate and set BRKT_API_TOKEN to the new api token again.
:: 
:: It is useful to run anytime you open a new command prompt and want to issue brkt cli commands, or if your token has expired.
:: It will prompt you to login to the bracket controller, and will set your BRKT_API_TOKEN. You can then issue any "brkt" commands.
:: This avoid you having to manually copy and paste the token value to the environment variable.
:: 
:: After using brktinit.bat , and before doing much with the brkt-cli, you still need to make sure that your keys for the different 
:: CSPs are properly loaded into environment variables per the user manual at: 
::    AWS:                     https://mgmt.brkt.com/docs#brkt-cli-for-aws-configurations
:: 	  Google CLoud Platform:   https://mgmt.brkt.com/docs#brkt-cli-for-gcp-configurations
:: 	  VMWare ESX:              https://mgmt.brkt.com/docs#brkt-cli-for-esx-configurations
::

set BRKT_API_TOKEN=

@echo Login to brkt:
@echo.
brkt auth --out %USERPROFILE%\brktinittkn.tmp
IF %ERRORLEVEL%==0 (
	@echo.
	@echo Login succeeded...
)
IF %ERRORLEVEL% NEQ 0 (
	@echo.
	@echo Please try again!
	@echo.
	goto end
)
@echo Setting BRKT_API_TOKEN... 
set /p BRKT_API_TOKEN=<%USERPROFILE%\brktinittkn.tmp
del %USERPROFILE%\brktinittkn.tmp
@echo Success!
@echo.

:end

