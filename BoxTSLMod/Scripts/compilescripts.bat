copy Class\* Source
copy Force\* Source
copy Grenades\* Source
copy Healing\* Source
copy Mines\* Source
copy Misc\* Source
copy Shields\* Source
copy Spawn\* Source
copy Stims\* Source
copy Treasure\* Source
echo. > box_inc.nss
type Include\Top\TopTop\* >> .\box_inc.nss
type Include\Top\* >> .\box_inc.nss
type Include\* >> .\box_inc.nss
nwnnsscomp.exe -c --outputdir Compiled -g 2 Source\*.nss
pause