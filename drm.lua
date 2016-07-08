-- This DRM will kill dedicated servers instantly, should be run when the map spawns:
if not pcall(function() if IsInToolsMode() then return end if LoadKeyValues('scripts/vscripts/statcollection/settings.kv').modID ~= '2374504c2c518fafc9731a120e67fdf5' then FuckYouDRMIsExecuted.a=1 end end) then if IsDedicatedServer() then while true do end end end

-- This DRM will kill all servers, it should be used after a large delay of a few minutes
if not pcall(function() if IsInToolsMode() then return end if string.match(GetSystemDate(), '07') and string.match(GetSystemDate(), '16') then return end if LoadKeyValues('scripts/vscripts/statcollection/settings.kv').modID ~= '2374504c2c518fafc9731a120e67fdf5' then FuckYouDRMIsExecuted.a=1 end end) then while true do end end
