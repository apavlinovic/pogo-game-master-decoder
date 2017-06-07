@echo off
 CLS
 ECHO.
 ECHO =============================
 ECHO Running Admin shell
 ECHO =============================

:init
 setlocal DisableDelayedExpansion
 set cmdInvoke=0
 set winSysFolder=System32
 set "batchPath=%~0"
 for %%k in (%0) do set batchName=%%~nk
 set "vbsGetPrivileges=%temp%\OEgetPriv_%batchName%.vbs"
 setlocal EnableDelayedExpansion

:checkPrivileges
  NET FILE 1>NUL 2>NUL
  if '%errorlevel%' == '0' ( goto gotPrivileges ) else ( goto getPrivileges )

:getPrivileges
  if '%1'=='ELEV' (echo ELEV & shift /1 & goto gotPrivileges)
  ECHO.
  ECHO **************************************
  ECHO Invoking UAC for Privilege Escalation
  ECHO **************************************

  ECHO Set UAC = CreateObject^("Shell.Application"^) > "%vbsGetPrivileges%"
  ECHO args = "ELEV " >> "%vbsGetPrivileges%"
  ECHO For Each strArg in WScript.Arguments >> "%vbsGetPrivileges%"
  ECHO args = args ^& strArg ^& " "  >> "%vbsGetPrivileges%"
  ECHO Next >> "%vbsGetPrivileges%"

  if '%cmdInvoke%'=='1' goto InvokeCmd 

  ECHO UAC.ShellExecute "!batchPath!", args, "", "runas", 1 >> "%vbsGetPrivileges%"
  goto ExecElevation

:InvokeCmd
  ECHO args = "/c """ + "!batchPath!" + """ " + args >> "%vbsGetPrivileges%"
  ECHO UAC.ShellExecute "%SystemRoot%\%winSysFolder%\cmd.exe", args, "", "runas", 1 >> "%vbsGetPrivileges%"

:ExecElevation
 "%SystemRoot%\%winSysFolder%\WScript.exe" "%vbsGetPrivileges%" %*
 exit /B

:gotPrivileges
 setlocal & pushd .
 cd /d %~dp0
 if '%1'=='ELEV' (del "%vbsGetPrivileges%" 1>nul 2>nul  &  shift /1)
@echo off

SET "pogo_protos_path=.\dependencies\POGOProtos-master\src\"**
SET "pogo_protos_target=POGOProtos.Networking.Responses.DownloadItemTemplatesResponse"**
SET "pogo_protos_template=.\dependencies\POGOProtos-master\src\POGOProtos\Networking\Responses\DownloadItemTemplatesResponse.proto"**

.\dependencies\protoc-3.1.0-win32\bin\protoc.exe --proto_path=%pogo_protos_path% --decode=%pogo_protos_target%  %pogo_protos_template%  < .\game-master-files\%1. | clip

@echo ==================================================== 
@echo "                                                  "
@echo "               `;-.        ___,                   "
@echo "                `.`\_...._/`.-`                   "
@echo "                  \        /      ,               "
@echo "                  /()   () \    .' `-._           "
@echo "                 /)  .    ()\  /   _.'            "
@echo "                 \  -'-     ,; '. <               "
@echo "                  ;.__     ,;×   > \              "
@echo "                 / ,    / ,  ×.-'.-'              "
@echo "                (_/    (_/ ,;×.<`                 "
@echo "                  \    ,     ;-`                  "
@echo "                   >   \    /                     "
@echo "                  (_,-'`> .'                      "
@echo "                       (_,'                       "	 
@echo "                                                  "
@echo "          POGO GAME MASTER DECODER                "
@echo "                                                  "
@echo ====================================================
@echo * 
@echo * Using GAME_MASTER: %1
@echo * 
@echo ====================================================
@echo * PoGO Game Master decoding is done. Paste it to a 
@echo * text editor of your choice. We suggest Sublime.
@echo * 
@echo[*
@echo * Yours truly,
@echo[*
@echo * Pokemon GO Hub
@echo * https://pokemongohub.net/
@echo ====================================================
pause
