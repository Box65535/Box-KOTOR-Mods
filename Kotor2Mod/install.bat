cd "C:\Home\Kotor2Mod\Box-KOTOR-Mods\BoxTSLMod"

REM gengen
copy Mod\Generators\gengen.py Install\Gen
copy Mod\Generators\* Install\Gen\Input
copy Mod\Scripts\Include\* Install\Gen\Input
copy Mod\Scripts\Spawn\* Install\Gen\Input
copy Mod\Scripts\Consts\* Install\Gen\Input
copy Mod\Tables\* Install\Gen\Input
copy Mod\Strings\* Install\Gen\Input
copy Mod\INIs\* Install\Gen\Input
copy Mod\GFFs\Ammo\* Install\Gen\Input
copy Mod\GFFs\Armor\* Install\Gen\Input
copy Mod\GFFs\Belts\* Install\Gen\Input
copy Mod\GFFs\Implants\* Install\Gen\Input
copy Mod\GFFs\Launchers\* Install\Gen\Input
copy Mod\GFFs\Medpacs\* Install\Gen\Input
copy Mod\GFFs\Mines\* Install\Gen\Input
copy Mod\GFFs\Saber\* Install\Gen\Input
copy Mod\GFFs\Shields\* Install\Gen\Input
copy Mod\GFFs\Templates\* Install\Gen\Input
copy Mod\GFFs\Turrets\* Install\Gen\Input
copy Mod\GFFs\Upgrades\* Install\Gen\Input
copy Mod\GFFs\Weapons\* Install\Gen\Input
cd Install\Gen
cls
python gengen.py
cd ..\..


REM Compile Scripts


pause