call runcrud.bat
if "%ERRORLEVEL%" == "0" goto runbrowser
echo.
echo Compilation errors - breaking work
goto fail

:runbrowser
start chrome.exe http://localhost:8080/crud/v1/task/getTasks
if "%ERRORLEVEL%" == "0" goto end
echo Cannot run browser
goto fail

:fail
echo.
echo There were errors

:end
echo.
echo /getTasks executed.