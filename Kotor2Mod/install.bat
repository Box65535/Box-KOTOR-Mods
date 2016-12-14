cd "C:\Home\Kotor2Mod\Box-KOTOR-Mods\BoxTSLMod"

REM gengen
copy Mod\Generators\gengen.py Install\Gen
copy Mod\Generators\* Install\Gen\Input
copy Mod\Scripts\Include\* Install\Gen\Input
copy Mod\Scripts\Const\* Install\Gen\Input
copy Mod\Tables\* Install\Gen\Input
copy Mod\Strings\* Install\Gen\Input
copy Mod\INIs\* Install\Gen\Input
copy Mod\GFFs\* Install\Gen\Input
cd Install\Gen
python gengen.py
cd ..\..


REM Compile Scripts


pause