cd "C:\Home\Kotor2Mod\Box-KOTOR-Mods\BoxTSLMod"


copy Items\Upgrades\* tslpatchdata
python upgradegen.py

TSLPatcher.exe upgrades.ini

pause
