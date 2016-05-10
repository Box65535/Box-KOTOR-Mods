copy Static\* Source
python scriptgen.py
copy Spawn\* .\
copy Treasure\* .\
echo. > box_inc.nss
type Include\Top\TopTop\* >> .\box_inc.nss
type Include\Top\* >> .\box_inc.nss
type Include\* >> .\box_inc.nss
nwnnsscomp.exe -c --outputdir Compiled -g 2 Source\*.nss
pause