@rem Do not use "echo off" to not affect any child calls.
@setlocal

@rem Get the absolute path to the current directory, which is assumed to be the
@rem Git installation root.
@for /F "delims=" %%I in ("%~dp0") do @set git_install_root=%%~fI
@set PATH=%git_install_root%\PortableGit\bin;%git_install_root%\PortableGit\\mingw\bin;%git_install_root%\PortableGit\cmd;%PATH%

@set PLINK_PROTOCOL=ssh
@if not defined TERM set TERM=msys

del version.txt
for /f "delims=" %%x in (codename.txt) do set Code=%%x
echo %code% >> version.txt
git rev-list HEAD | wc -l >> version.txt