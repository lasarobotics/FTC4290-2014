del version.txt
cd ./.git/refs/heads
for /f "delims=" %%x in ('type dev') do set "Var=%%x"
cd ..
cd ..
cd ..
echo %var% >> version.txt