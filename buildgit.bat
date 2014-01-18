@rem Do not use "echo off" to not affect any child calls.
@setlocal

@rem Get the absolute path to the current directory, which is assumed to be the
@rem Git installation root.
@for /F "delims=" %%I in ("%~dp0") do @set git_install_root=%%~fI
@set PATH=%git_install_root%\PortableGit\bin;%git_install_root%\PortableGit\mingw\bin;%git_install_root%\PortableGit\cmd;%PATH%

@set PLINK_PROTOCOL=ssh
@if not defined TERM set TERM=msys

git submodule update --init
cd PortableGit
git submodule update --init
msys.bat
pause