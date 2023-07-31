---@diagnostic disable: missing-parameter
-- timer reference
RegisterNetEvent('miut_timer')
AddEventHandler('miut_timer', function(time)
    Citizen.SetTimeout(time, function()

    end)
end)



----------------------------------------------------------------------------------------------------
-- check version of script / don't touch this thing / i mean it, keep scrolling you goober
----------------------------------------------------------------------------------------------------
local function versionPrint(_type, log)
    local color = _type == 'success' and '^2' or '^1'
    print(('^5[M.I. Resources]%s %s^7'):format(color, log))
end

local function CheckMenuVersion()
    PerformHttpRequest('https://raw.githubusercontent.com/MesaIndigo/mi_utils/master/version.txt', function(err, text, headers)
        local currentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version')

        if not text then 
            versionPrint('error', 'Currently unable to run a version check.')
            return
        end

        versionPrint('success', '----------------------------------------')
        versionPrint('success', ('Current Version: %s'):format(currentVersion))
        
        if text == currentVersion then
            versionPrint('success', 'You are running the latest version.')
            versionPrint('success', '----------------------------------------')
        else
            versionPrint('error', ('You are currently running an outdated version, please update to version %s'):format(text))
            versionPrint('success', ('Latest Version: %s'):format(text))
            versionPrint('success', '----------------------------------------')
        end
    end)
end

CheckMenuVersion()