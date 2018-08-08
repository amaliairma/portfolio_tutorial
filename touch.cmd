@echo off
    setlocal enableextensions disabledelayedexpansion
    :: example how to use it: 
    :: cmd /C touch .gitignore

    (for %%a in (%*) do if exist "%%~a" (
        pushd "%%~dpa" && ( copy /b "%%~nxa"+,, & popd )
    ) else (
        type nul > "%%~fa"
    )) >nul 2>&1


    