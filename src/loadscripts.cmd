:: @file       loadscripts.cmd
:: @version    0.1
:: @date       April 2022
:: @author     Joeri Kok
:: @copyright  GPL-3.0 license
::
:: @title
::   Load AutoHotKey Scripts
:: @brief
::   Loads all AutoHotKey scripts located in the current directory.

:: @label
::   main
:: @brief
::   Entry point of this module.
:: @params
::   args[in] ............ One or more command-line arguments.
:: @returns
::   0 ................... Program was executed successfully.
:main (__in args...:*) {
    @echo off
    call :exec_scripts "ahk"
    exit /b 0
}

:: @label
::   exec_scripts
:: @brief
::   Executes all script files in the current directory with the given file
::   extension.
:: @params
::   ext[in] ............. File extension of the script files.
:exec_scripts (__in ext:1) {
    for %%e in ("*.%~1") do (
        start "" "%%~fe"
    )
    exit /b
}
