RegisterServerEvent("admin:getIsAllowed")
AddEventHandler("admin:getIsAllowed", function()
    if IsPlayerAceAllowed(source, "simplemenu.admin") then
        TriggerClientEvent("admin:returnIsAllowed", source, true)
    else
        TriggerClientEvent("admin:returnIsAllowed", source, false)
    end
end)

RegisterServerEvent("fire:getIsFire")
AddEventHandler("fire:getIsFire", function()
    if IsPlayerAceAllowed(source, "simplemenu.fire") then
        TriggerClientEvent("fire:returnIsFire", source, true)
    else
        TriggerClientEvent("fire:returnIsFire", source, false)
    end
end)

RegisterServerEvent("emt:getIsEmt")
AddEventHandler("emt:getIsEmt", function()
    if IsPlayerAceAllowed(source, "simplemenu.emt") then
        TriggerClientEvent("emt:returnIsEmt", source, true)
    else
        TriggerClientEvent("emt:returnIsEmt", source, false)
    end
end)

RegisterServerEvent("police:getIsPolice")
AddEventHandler("police:getIsPolice", function()
    if IsPlayerAceAllowed(source, "simplemenu.police") then
        TriggerClientEvent("police:returnIsPolice", source, true)
    else
        TriggerClientEvent("police:returnIsPolice", source, false)
    end
end)

RegisterServerEvent("sheriff:getIsSheriff")
AddEventHandler("sheriff:getIsSheriff", function()
    if IsPlayerAceAllowed(source, "simplemenu.sheriff") then
        TriggerClientEvent("sheriff:returnIsSheriff", source, true)
    else
        TriggerClientEvent("sheriff:returnIsSheriff", source, false)
    end
end)

RegisterServerEvent("state:getIsState")
AddEventHandler("state:getIsState", function()
    if IsPlayerAceAllowed(source, "simplemenu.state") then
        TriggerClientEvent("state:returnIsState", source, true)
    else
        TriggerClientEvent("state:returnIsState", source, false)
    end
end)

RegisterServerEvent("highway:getIsHighway")
AddEventHandler("highway:getIsHighway", function()
    if IsPlayerAceAllowed(source, "simplemenu.highway") then
        TriggerClientEvent("highway:returnIsHighway", source, true)
    else
        TriggerClientEvent("highway:returnIsHighway", source, false)
    end
end)

local CurrentVersion = 'v1.0'
local GithubResourceName = 'SimpleMenu'

PerformHttpRequest('https://github.com/San-Andreas-Roleplay/simplemenu.git', function(Error, NewestVersion, Header)
	PerformHttpRequest('https://github.com/San-Andreas-Roleplay/simplemenu.git', function(Error, Changes, Header)
		print('\n')
		print('###########################################################')
		print('------------------------')
        print('SimpleMenu')
        print('------------------------')
        print('NativeUI is a Dependency')
        print('------------------------\n')
		print('Current Version: ' .. CurrentVersion)
		print('Newest Version: ' .. NewestVersion)
		io.write("")
		print('Changelog: \n\n' .. Changes)
		print('###########################################################')
		if CurrentVersion ~= NewestVersion then
			print('')
		else
			print('-- Up to date!')
			print('--------------')
		end
		print('\n')
end)
end)

function mysplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end