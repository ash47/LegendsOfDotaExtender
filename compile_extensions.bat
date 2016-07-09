:: Change back to the LoD root folder
cd ..\..

:: Cleanup old stuff
rmdir /S /Q "dota\extended"

:: Create a folder to house the custom distributions
mkdir "dota\extended"
mkdir "dota\extended\content"
mkdir "dota\extended\game"
mkdir "dota\extended\staging"

:: Copy the base mod
xcopy /e /y "dota\content\*" "dota\extended\content\"
xcopy /e /y "dota\game\*" "dota\extended\game\"

:: Copy new maps
xcopy /e /y "import\LegendsOfDotaExtender\maps\*" "dota\extended\game\maps\"

:: Copy materials
xcopy /e /y "import\LegendsOfDotaExtender\src\materials\*" "dota\extended\game\materials\"

:: Copy the shop file
xcopy /e /y "import\dota_imba\scripts\shops\imba_standard_shops.txt" "dota\extended\game\scripts\shops\imba_shops.txt*"

:: Copy all new icons
xcopy /e /y "import\dota_imba\resource\flash3\images\*" "dota\extended\game\resource\flash3\images\"

:: Copy Lua based abilities and items
mkdir "dota\extended\game\scripts\vscripts\imba_imported\"
xcopy /e /y "import\dota_imba\scripts\vscripts\hero\*" "dota\extended\game\scripts\vscripts\imba_imported\hero\"
xcopy /e /y "import\dota_imba\scripts\vscripts\items\*" "dota\extended\game\scripts\vscripts\imba_imported\items\"
xcopy /e /y "import\dota_imba\scripts\vscripts\modifier\*" "dota\extended\game\scripts\vscripts\imba_imported\modifier\"
xcopy /e /y "import\dota_imba\scripts\vscripts\internal\*" "dota\extended\game\scripts\vscripts\imba_imported\internal\"

:: Recompile scripts
cd import\LegendsOfDotaExtender\script_generator
node app.js

:: All done! Pause so output can be read
pause
