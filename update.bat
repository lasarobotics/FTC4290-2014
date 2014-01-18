del version.txt
for /f "delims=" %%x in (codename.txt) do set code=%%x
for /f "delims=" %%i in ('git rev-parse --abbrev-ref HEAD') do set branch=%%i
echo %code% >> version.txt
echo %branch% >> version.txt
git rev-list HEAD | wc -l >> version.txt