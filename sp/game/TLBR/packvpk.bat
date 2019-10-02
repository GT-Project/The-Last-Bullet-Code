"C:\Program Files (x86)\Steam\steamapps\common\Source SDK Base 2013 Singleplayer\bin\vpk.exe" -M a "tlbr" @packvpk.txt 
for /f "tokens=*" %%i IN (packvpk.txt) do del /Q "%cd%\%%i"