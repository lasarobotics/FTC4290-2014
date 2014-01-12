@rem Do not use "echo off" to not affect any child calls.
@setlocal

@rem Get the absolute path to the current directory, which is assumed to be the
@rem Git installation root.
@for /F "delims=" %%I in ("%~dp0") do @set git_install_root=%%~fI
@set PATH=%git_install_root%\PortableGit\bin;%git_install_root%\PortableGit\mingw\bin;%git_install_root%\PortableGit\cmd;%PATH%

@set PLINK_PROTOCOL=ssh
@if not defined TERM set TERM=msys

del ".\LASA 4290\Robo_Others\version.txt"
del ".\LASA 5998\Robo_Others\version.txt"
for /f "delims=" %%x in (codename.txt) do set code=%%x
for /f "delims=" %%i in ('git rev-list --tags --max-count=1') do set version=%%i
for /f "delims=" %%i in ('git describe --tags "%version%" ') do set versionnumber=%%i
for /f "delims=" %%i in ('git rev-parse --abbrev-ref HEAD') do set branch=%%i
set /a numcommits=0
for /f "delims=" %%x in ('git rev-list HEAD') do  set /a numcommits=numcommits+1
set versionnumber=%versionnumber:~0,4%
echo %code%Ver:%versionnumber%x >> "./LASA 4290/Robo_Others/version.txt"
echo %code%Ver:%versionnumber%x >> "./LASA 5998/Robo_Others/version.txt"
set final=B:%branch% C:%numcommits%
echo %final% >> "./LASA 4290/Robo_Others/version.txt"
echo %final% >> "./LASA 5998/Robo_Others/version.txt"