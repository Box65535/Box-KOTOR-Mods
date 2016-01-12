cd "C:\Home\Kotor2Mod\Box-KOTOR-Mods\BoxTSLMod"

copy Items\Armor\* tslpatchdata
copy Items\EnemySpells\* tslpatchdata
copy Items\Equipment\* tslpatchdata
copy Items\Inventory\* tslpatchdata
copy Items\SpellEquipment\* tslpatchdata
copy Items\Traps\* tslpatchdata
copy Items\UnmodifiedNames\* tslpatchdata
copy Items\Upgrades\* tslpatchdata
copy Items\Weapons\* tslpatchdata
copy Blanks\* tslpatchdata
python armorgen.py
python hidegen.py
python featgen.py
python powergen2.py
python powergen3.py
python spellgen.py
python poisongen.py
python shieldgen.py
python upgradegen.py
python costgen.py
python modulegen.py
copy dc.ini tslpatchdata

TSLPatcher.exe armor.ini
TSLPatcher.exe hides.ini
copy Strings\Feats\append.tlk tslpatchdata
TSLPatcher.exe featitem.ini
copy Strings\Powers\append.tlk tslpatchdata
TSLPatcher.exe powers.ini
TSLPatcher.exe spells.ini
TSLPatcher.exe poison.ini
TSLPatcher.exe shields.ini
TSLPatcher.exe dc.ini
TSLPatcher.exe upgrades.ini
TSLPatcher.exe costs.ini
copy tslpatchdata\debug\* Scripts\Include

TSLPatcher.exe 101PER.ini 
TSLPatcher.exe 102PER.ini 
TSLPatcher.exe 103PER.ini 
TSLPatcher.exe 104PER.ini 
TSLPatcher.exe 105PER.ini 
TSLPatcher.exe 106PER.ini 
TSLPatcher.exe 107PER.ini 

cd Scripts
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
cd ..

copy Scripts\Compiled\* Overwrites
copy Overwrites\* tslpatchdata
python overwritegen.py
TSLPatcher overwrites.ini

pause
