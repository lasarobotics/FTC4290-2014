copy .\setup\pre-commit .\.git\hooks\
copy .\setup\post-commit .\.git\hooks\
git submodule update --init
cd PortableGit
git submodule update --init
msys.bat
pauses