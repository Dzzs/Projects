@echo off
echo.
echo [93m==================================================[0m
echo [94m*[0m[92m*[0m[31m*[0m                                           [31m*[0m[92m*[0m[94m*[0m
echo    Endpoint Central Agent Install Script
echo        Created by [96mDamion Rosenbaum[0m      
echo [94m*[0m[92m*[0m[31m*[0m                                           [31m*[0m[92m*[0m[94m*[0m
echo [93m==================================================[0m
echo.
echo [1;41mScript has to be run as [0m[1;4;41mAdministrator![0m
echo.
:getIP
set /P machineIP=Enter IP address or E to exit:
if "%machineIP%"=="e" goto end
if "%machineIP%"=="E" goto end
goto validateIP

:invalidIP
echo Invalid IP try agian.
goto getIP

:copyEPC
robocopy "C:\PATHTO\NewEndpoint" "\\%machineIP%\C$\Temp\NewEndpoint" /z /s /R:0 /W:0
if %ERRORLEVEL%==16 goto notadmin

timeout /t 3 >nul
goto reinstallEPC

:notadmin
echo.
echo.
echo [41mFile copy failed. Either the script was not run as administrator or the IP is incorrect/unreachable.[0m
goto end

:reinstallEPC
psexec \\%machineIP% cmd /c "call C:\Temp\NewEndpoint\Script.bat"
timeout /t 3 >nul

:end
echo.
echo Reached end of script. Press any key to exit.
pause
exit

:validateIP
set count=0
for /f "tokens=1-4 delims=." %%a in ("%machineIP%") do (
    if "%%a"=="" goto invalidIP
    if %%a lss 0 goto invalidIP
    if %%a gtr 255 goto invalidIP

    if not "%%b"=="" (
        if %%b lss 0 goto invalidIP
        if %%b gtr 255 goto invalidIP
    ) else (
        goto invalidIP
    )

    if not "%%c"=="" (
        if %%c lss 0 goto invalidIP
        if %%c gtr 255 goto invalidIP
    ) else (
        goto invalidIP
    )

    if not "%%d"=="" (
        if %%d lss 0 goto invalidIP
        if %%d gtr 255 goto invalidIP
    ) else (
        goto invalidIP
    )
    set /a count+=1
)
if %count% neq 1 goto invalidIP
goto copyEPC
