@echo off
@cd /d "%~dp0"

rem Script that runs on target machine to install EPC agent.
rem Created by NAME

echo.
echo Attempting to uninstall existing agent.
echo If uninstall does not complete after 5 minutes restart the remote machine and exit this Command Prompt.
echo Run the script again when the machine is back online.
echo Uninstall started at %time%
echo.
goto uninstallEPC

:uninstallEPC
msiexec /X{6AD2231F-FF48-4D59-AC26-405AFAE23DB7} /qn

if %errorlevel%==0 (
      echo Uninstall complete.
      echo.
      goto installEPC
) else if %errorlevel%==1605 (
      echo.
      echo Nothing to uninstall.
      goto installEPC
) else if %errorlevel%==1618 (
      echo Uninstall in progress. Please wait...
      echo.
      timeout /t 5 >nul
      goto uninstallEPC
) else (
      echo Uninstall failed. - %errorlevel%
      echo Restart the computer and try again, or manually attempt the process.
      goto exit
)

:installEPC
echo Starting install. Please wait... This usually takes less than a minute.
start /wait msiexec /i UEMSAgent.msi TRANSFORMS="UEMSAgent.mst" ENABLESILENT=yes REBOOT=ReallySuppress INSTALLSOURCE=Manual SERVER_ROOT_CRT="%cd%\DMRootCA-Server.crt" DS_ROOT_CRT="%cd%\DMRootCA.crt" /lv Agentinstalllog.txt
if "%errorlevel%"=="0" (
echo.
echo Endpoint Central Agent installed successfully. Give it 1-2 minutes to get up and running.
echo.
) else (
echo.
echo Install failed. Exit and run this script again. A second or third attempt usually works.
echo If the install fails 3 times restart the remote machine and run the script again.
)

:exit
