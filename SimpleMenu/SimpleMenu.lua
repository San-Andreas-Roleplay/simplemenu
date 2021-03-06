_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu("SimpleMenu", "Made By: ~b~Xavier Smith")
_menuPool:Add(mainMenu)

local emergency = false
Citizen.CreateThread(function()
  TriggerServerEvent("emergency:getIsEmergency")
end)

RegisterNetEvent("emergency:returnIsEmergency")
RegisterNetEvent("emergency:returnIsEmergency", function(isAllowed)
  emergency = isAllowed
end)

local allowedToUse = false
Citizen.CreateThread(function()
  TriggerServerEvent("admin:getIsAllowed")
end)

RegisterNetEvent("admin:returnIsAllowed")
AddEventHandler("admin:returnIsAllowed", function(isAllowed)
    allowedToUse = isAllowed
end)

local police = false
Citizen.CreateThread(function()
  TriggerServerEvent("police:getIsPolice")
end)

RegisterNetEvent("police:returnIsPolice")
AddEventHandler("police:returnIsPolice", function(isAllowed)
    police = isAllowed
end)

local sheriff = false
Citizen.CreateThread(function()
  TriggerServerEvent("sheriff:getIsSheriff")
end)

RegisterNetEvent("sheriff:returnIsSheriff")
AddEventHandler("sheriff:returnIsSheriff", function(isAllowed)
    sheriff = isAllowed
end)

local state = false
Citizen.CreateThread(function()
  TriggerServerEvent("state:getIsState")
end)

RegisterNetEvent("state:returnIsState")
AddEventHandler("state:returnIsState", function(isAllowed)
  state = isAllowed
end)

local highway = false
Citizen.CreateThread(function()
  TriggerServerEvent("highway:getIsHighway")
end)

RegisterNetEvent("highway:returnIsHighway")
AddEventHandler("highway:returnIsHighway", function(isAllowed)
  highway = isAllowed
end)

local emt = false
Citizen.CreateThread(function()
  TriggerServerEvent("emt:getIsEmt")
end)

RegisterNetEvent("emt:returnIsEmt")
AddEventHandler("emt:returnIsEmt", function(isAllowed)
    emt = isAllowed
end)

local fire = false
Citizen.CreateThread(function()
  TriggerServerEvent("fire:getIsFire")
end)

RegisterNetEvent("fire:returnIsFire")
AddEventHandler("fire:returnIsFire", function(isAllowed)
    fire = isAllowed
end)

cars = {
  "adder",
  "airbus",
  "airtug",
  "akuma",
  "ambulance",
  "annihilator",
  "armytanker",
  "armytrailer",
  "armytrailer2",
  "asea",
  "asea2",
  "asterope",
  "bagger",
  "baletrailer",
  "baller",
  "baller2",
  "banshee",
  "barracks",
  "barracks2",
  "bati",
  "bati2",
  "benson",
  "bfinjection",
  "biff",
  "bison",
  "bison2",
  "bison3",
  "bjxl",
  "blazer",
  "blazer2",
  "blazer3",
  "blimp",
  "blista",
  "bmx",
  "boattrailer",
  "bobcatxl",
  "bodhi2",
  "boxville",
  "boxville2",
  "boxville3",
  "buccaneer",
  "buffalo",
  "buffalo2",
  "bulldozer",
  "bullet",
  "burrito",
  "burrito2",
  "burrito3",
  "burrito4",
  "burrito5",
  "bus",
  "buzzard",
  "buzzard2",
  "cablecar",
  "caddy",
  "caddy2",
  "camper",
  "carbonizzare",
  "carbonrs",
  "cargobob",
  "cargobob2",
  "cargobob3",
  "cargoplane",
  "cavalcade",
  "cavalcade2",
  "cheetah",
  "coach",
  "cogcabrio",
  "comet2",
  "coquette",
  "cruiser",
  "crusader",
  "cuban800",
  "cutter",
  "daemon",
  "dilettante",
  "dilettante2",
  "dinghy",
  "dinghy2",
  "dloader",
  "docktrailer",
  "docktug",
  "dominator",
  "double",
  "dubsta",
  "dubsta2",
  "dump",
  "dune",
  "dune2",
  "duster",
  "elegy2",
  "emperor",
  "emperor2",
  "emperor3",
  "entityxf",
  "exemplar",
  "f620",
  "faggio2",
  "fbi",
  "fbi2",
  "felon",
  "felon2",
  "feltzer2",
  "firetruk",
  "fixter",
  "flatbed",
  "forklift",
  "fq2",
  "freight",
  "freightcar",
  "freightcont1",
  "freightcont2",
  "freightgrain",
  "freighttrailer",
  "frogger",
  "frogger2",
  "fugitive",
  "fusilade",
  "futo",
  "gauntlet",
  "gburrito",
  "graintrailer",
  "granger",
  "gresley",
  "habanero",
  "handler",
  "hauler",
  "hexer",
  "hotknife",
  "infernus",
  "ingot",
  "intruder",
  "issi2",
  "jackal",
  "jb700",
  "jet",
  "jetmax",
  "journey",
  "khamelion",
  "landstalker",
  "lazer",
  "lguard",
  "luxor",
  "mammatus",
  "manana",
  "marquis",
  "maverick",
  "mesa",
  "mesa2",
  "mesa3",
  "metrotrain",
  "minivan",
  "mixer",
  "mixer2",
  "monroe",
  "mower",
  "mule",
  "mule2",
  "nemesis",
  "ninef",
  "ninef2",
  "oracle",
  "oracle2",
  "packer",
  "packer",
  "patriot",
  "pbus",
  "pcj",
  "penumbra",
  "peyote",
  "phantom",
  "phoenix",
  "picador",
  "police",
  "police2",
  "police3",
  "police4",
  "policeb",
  "policet",
  "polmav",
  "pony",
  "pony2",
  "pounder",
  "prairie",
  "pranger",
  "predator",
  "premier",
  "primo",
  "proptrailer",
  "radi",
  "raketrailer",
  "rancherxl",
  "rancherxl2",
  "rapidgt",
  "rapidgt2",
  "ratloader",
  "rebel",
  "rebel2",
  "regina",
  "rentalbus",
  "rhino",
  "riot",
  "ripley",
  "rocoto",
  "romero",
  "rubble",
  "ruffian",
  "ruiner",
  "rampo",
  "rampo2",
  "sabregt",
  "sadler",
  "sadler2",
  "sanchez",
  "sanchez2",
  "sandking",
  "sandking2",
  "schafter2",
  "schwarzer",
  "scorcher",
  "scrap",
  "seashark",
  "seashark2",
  "seminole",
  "sentinel",
  "sentinel2",
  "serrano",
  "shamal",
  "sheriff",
  "sheriff2",
  "skylift",
  "speedo",
  "speedo2",
  "squalo",
  "stainer",
  "stinger",
  "stingergt",
  "stockade",
  "stockade3",
  "stratum",
  "stretch",
  "stunt",
  "submersible",
  "sultan",
  "suntrap",
  "superd",
  "surano",
  "surfer",
  "surfer2",
  "surge",
  "taco",
  "tailgater",
  "tanker",
  "tankercar",
  "taxi",
  "tiptruck",
  "titan",
  "tornado",
  "tornado2",
  "tornado3",
  "tornado4",
  "tourbus",
  "towtruck",
  "towtruck2",
  "tr2",
  "tr3",
  "tr4",
  "tractor",
  "tractor2",
  "tractor3",
  "trailerlogs",
  "trailers",
  "trailers2",
  "trailers3",
  "trailersmall",
  "trash",
  "trflat",
  "trbike",
  "trbike2",
  "trbike3",
  "tropic",
  "tvtrailer",
  "utillitruck",
  "utillitruck2",
  "utillitruck3",
  "vacca",
  "vader",
  "velum",
  "vlgero",
  "voltic",
  "voodoo2",
  "washington",
  "youga",
  "zion",
  "zion2",
  "ztype",
}

--[[Change these accordingly. Only use your server's Emergency Spawn Codes. (These are default GTA so no issues will arise if you keep them but is highly suggested to use
your own so you can have custom Emergency Services cars)]]
police = {
  
}

sheriff = {

}

state = {

}

highway = {

}

emt = {

}

fire = {

}

--Replace DONT_SPAWN following the template with your addons spawn codes
--[[  TEMPLATE: "",
The Template MUST have " before and " after the CARS spawn code and , to move onto the next line
]]
acars = {

}

Citizen.CreateThread(function()
local key = 57
while true do
    Citizen.Wait(1)
    if IsControlJustReleased(1,  key) then
      local waypoint = GetFirstBlipInfoId(8)
    if DoesBlipExist(waypoint) then
       SetEntityCoords(PlayerPedId(), GetBlipInfoIdCoord(waypoint))
    end
  end
end
end)

function Teleport(menu)
  local submenu = _menuPool:AddSubMenu(menu, "Misc Settings", "")
  local tp = NativeUI.CreateItem("~o~Teleport to Waypoint", "Teleport to Waypoint | ~r~NOTE: ~o~May Teleport underground give it a few.")
  submenu:AddItem(tp)
  submenu.OnItemSelect = function(sender, item, index)
    if item == tp then
      local waypoint = GetFirstBlipInfoId(8)
    if DoesBlipExist(waypoint) then
       SetEntityCoords(PlayerPedId(), GetBlipInfoIdCoord(waypoint))
      end
    end
  end
  end

function Emergency(menu)
local submenu = _menuPool:AddSubMenu(menu, "Emergency Services", "Menu to spawn Emergency Vehicles & Loadouts")
local othermenu = _menuPool:AddSubMenu(submenu, "~b~Emergency Loadouts")
local stateList = NativeUI.CreateListItem("Spawn State", state, 1)
local highwayList = NativeUI.CreateListItem("Spawn Highway", highway, 1)
local policeList = NativeUI.CreateListItem("Spawn Police", police, 1)
local sheriffList = NativeUI.CreateListItem("Spawn Sheriff", sheriff, 1)
local emtList = NativeUI.CreateListItem("Spawn EMT", emt, 1)
local fireList = NativeUI.CreateListItem("Spawn Fire", fire, 1)
--submenu:AddItem(stateList)
--submenu:AddItem(highwayList)
--submenu:AddItem(policeList)
--submenu:AddItem(sheriffList)
--submenu:AddItem(emtList)
--submenu:AddItem(fireList)
submenu.OnListSelect = function(sender, item, index)
    if item == policeList then
      if police then
      local police = item:IndexToItem(index)
      spawnCar(police)
      Citizen.Wait(1)
      notify("~b~Emergency Car Spawned: "..police)
    else
      notify("~r~Permission not granted!")
    end
    else if item == highwayList then 
      if highway then
        local highway = item:IndexToItem(index)
        spawnCar(highway)
        Citizen.Wait(1)
        notify("~b~Emergency Car Spawned: "..highway)
    else
      notify("~r~Permission not granted!")
    end
    else if item == sheriffList then
      if sheriff then
      local sheriff = item:IndexToItem(index)
      spawnCar(sheriff)
      Citizen.Wait(1)
      notify("~b~Emergency Car Spawned: "..sheriff)
    else
      notify("~r~Permission not granted!")
    end
    else if item == stateList then
      if state then
      local state = item:IndexToItem(index)
      spawnCar(state)
      Citizen.Wait(1)
      notify("~b~Emergency Car Spawned: "..state)
    else
      notify("~r~Permission not granted!")
    end
    else if item == emtList then
      if emt then
      local emt = item:IndexToItem(index)
      spawnCar(emt)
      Citizen.Wait(1)
      notify("~b~Emergency Car Spawned: "..emt)
    else
      notify("~r~Permission not granted!") 
    end
    else if item == fireList then
      if fire then
      local fire = item:IndexToItem(index)
      spawnCar(fire)
      Citizen.Wait(1)
      notify("~b~Emergency Car Spawned: "..fire)
    else
      notify("~r~Permission not granted!") 
                  end
                end
              end
            end
          end
        end
      end
    end
    local stateloadout = NativeUI.CreateItem("State Loadout", "Gives State Loadout")
    local hwayloadout = NativeUI.CreateItem("Highway Patrol Loadout", "Gives Highway Patrol Loadout")
    local coploadout = NativeUI.CreateItem("Police Loadout", "Gives Police Loadout")
    local sherloadout = NativeUI.CreateItem("Sheriff Loadout", "Gives Sheriff Loadout")
    local medloadout = NativeUI.CreateItem("EMT Loadout", "Gives EMT Loadout")
    local fireloadout = NativeUI.CreateItem("Fire Loadout", "Gives Fire Loadout")
    othermenu:AddItem(stateloadout)
    othermenu:AddItem(hwayloadout)
    othermenu:AddItem(coploadout)
    othermenu:AddItem(sherloadout)
    othermenu:AddItem(medloadout)
    othermenu:AddItem(fireloadout)
    othermenu.OnItemSelect = function(sender, item, index)
      if item == coploadout then
        if police then
          loaded = not loaded
          if loaded then
        loadModel("s_m_y_cop_01")
        giveWeapon("weapon_teargas")
        giveWeapon("weapon_combatpistol")
        giveWeapon("weapon_stungun")
        giveWeapon("weapon_pumpshotgun")
        giveWeapon("weapon_carbinerifle")
        giveWeapon("weapon_nightstick")
        giveWeapon("weapon_flashlight")
        notify("~b~Police Loadout Given")
      else
        RemoveAllPedWeapons(GetPlayerPed(-1), true)
        notify("~r~Loadout is now Removed")
      end
      else
        notify("~r~Permission not granted!")
      end
      else if item == stateloadout then
        if state then
          loaded2 = not loaded2
          if loaded2 then
          loadModel("s_m_y_sheriff_01")
          giveWeapon("weapon_teargas")
          giveWeapon("weapon_combatpistol")
          giveWeapon("weapon_stungun")
          giveWeapon("weapon_pumpshotgun")
          giveWeapon("weapon_carbinerifle")
          giveWeapon("weapon_nightstick")
          giveWeapon("weapon_flashlight")
          notify("~b~Sheriff Loadout Given: ")
        else
          RemoveAllPedWeapons(GetPlayerPed(-1), true)
          notify("~r~Loadout is now Removed")
        end
        else
          notify("~r~Permission not granted!")
        end
      else if item == sherloadout then
        if sheriff then
        loaded3 = not loaded3
        if loaded3 then
        loadModel("s_m_y_sheriff_01")
        giveWeapon("weapon_teargas")
        giveWeapon("weapon_combatpistol")
        giveWeapon("weapon_stungun")
        giveWeapon("weapon_pumpshotgun")
        giveWeapon("weapon_carbinerifle")
        giveWeapon("weapon_nightstick")
        giveWeapon("weapon_flashlight")
        notify("~b~Sheriff Loadout Given: ")
      else
        RemoveAllPedWeapons(GetPlayerPed(-1), true)
        notify("~r~Loadout is now Removed")
      end
      else
        notify("~r~Permission not granted!")
      end
      else if item == medloadout then
        if emt then
        loaded4 = not loaded4
        if loaded4 then
        loadModel("S_M_M_Paramedic_01")
      else
        RemoveAllPedWeapons(GetPlayerPed(-1), true)
        notify("~r~Loadout is now Removed")
      end
      else
        notify("~r~Permission not granted!")
      end
      else if item == fireloadout then
        if fire then
        loaded5 = not loaded5
        if loaded5 then
        loadModel("S_M_Y_Fireman_01")
        giveWeapon("weapon_flaregun")
        giveWeapon("weapon_fireextinguisher")
        giveWeapon("weapon_crowbar")
        notify("~b~Fire Loadout Given")
      else
        RemoveAllPedWeapons(GetPlayerPed(-1), true)
        notify("~r~Loadout is now Removed")
      end
      else
        notify("~r~Permission not granted!")
      end
    else if item == hwayloadout then
      if sheriff then
      loaded3 = not loaded3
      if loaded3 then
      giveWeapon("weapon_teargas")
      giveWeapon("weapon_combatpistol")
      giveWeapon("weapon_stungun")
      giveWeapon("weapon_pumpshotgun")
      giveWeapon("weapon_carbinerifle")
      giveWeapon("weapon_nightstick")
      giveWeapon("weapon_flashlight")
      notify("~b~Sheriff Loadout Given: ")
    else
      RemoveAllPedWeapons(GetPlayerPed(-1), true)
      notify("~r~Loadout is now Removed")
    end
    else
      notify("~r~Permission not granted!")
    end
              end
            end
          end
        end
      end
    end
  end
end

function Cars(menu)
local submenu = _menuPool:AddSubMenu(menu, "Vehicles Menu", "Sub Menu for Vehicles")
local carsList = NativeUI.CreateListItem("Spawn Cars", cars, 1)
local acarsList = NativeUI.CreateListItem("Spawn Addon Cars", acars, 1, "")
submenu:AddItem(carsList)
--submenu:AddItem(acarsList)
submenu.OnListSelect = function(sender, item, index)
    if item == carsList then
      local selectedCar = item:IndexToItem(index)
      spawnCar(selectedCar)
      notify("~b~Car Spawned: "..selectedCar)
    else if item == acarsList then
      local selectedaCar = item:IndexToItem(index)
      spawnCar(selectedaCar)
      notify("~b~Car Spawned: "..selectedaCar)
    end
  end
end
local othermenu = _menuPool:AddSubMenu(submenu, "~b~Vehicle Controls")
local hood = NativeUI.CreateItem("Toggle Vehicle Hood", "Toggles Vehicle's Hood")
local trunk = NativeUI.CreateItem("Toggle Trunk", "Toggles Vehicle's Trunk")
local door1 = NativeUI.CreateItem("Toggle Passenger Door", "Opens Front Right Door")
local door2 = NativeUI.CreateItem("Toggle Driver Door", "Opens Front Left Door")
local door3 = NativeUI.CreateItem("Toggle Rear Left Door", "Opens Rear Left Door")
local door4 = NativeUI.CreateItem("Toggle Rear Right Door", "Opens Rear Right Door")
local engine = NativeUI.CreateItem("Toggle Engine", "Toggles Vehicle's Engine")
local fixcar = NativeUI.CreateItem("Fix Vehicle", "Fixes Vehicle Ped is in.")
local cleancar = NativeUI.CreateItem("Clean Vehicle", "Cleans Vehicle Ped is in.")
local delv = NativeUI.CreateItem("~r~Delete Vehicle", "Deletes Vehicle or use F9")
submenu:AddItem(fixcar)
submenu:AddItem(cleancar)
submenu:AddItem(delv)
submenu.OnItemSelect = function(sender, item, index)
    if item == fixcar then
      local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
      SetVehicleEngineHealth(vehicle, 0)
      SetVehicleEngineOn( vehicle, true, true )
      SetVehicleFixed(vehicle)
    else if item == cleancar then
      local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
      SetVehicleDirtLevel(vehicle, 0)
    else if item == delv then
      local ped = GetPlayerPed( -1 )

  if (DoesEntityExist(ped) and not IsEntityDead(ped)) then 
      local pos = GetEntityCoords(ped)
      if (IsPedSittingInAnyVehicle(ped)) then 
        local vehicle = GetVehiclePedIsIn(ped, false)
        if (GetPedInVehicleSeat(vehicle, -1) == ped) then 
          SetEntityAsMissionEntity(vehicle, true, true )
          deleteCar(vehicle)
          if (DoesEntityExist(vehicle)) then 
            notify("~r~Unable to delete vehicle... Try Again")
          else 
            notify("~g~Vehicle deleted")
          end 
        else 
          notify("~o~You must be in the driver's seat!")
          end 
      else
        local playerPos = GetEntityCoords(ped, 1)
        local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords(ped, 0.0, distanceToCheck, 0.0)
        local vehicle = GetVehicleInDirection(playerPos, inFrontOfPlayer)
        if ( DoesEntityExist(vehicle)) then 
          SetEntityAsMissionEntity(vehicle, true, true)
          deleteCar(vehicle)
          if (DoesEntityExist(vehicle)) then 
            notify("~r~Unable to delete vehicle... Try Again")
          else 
            notify("~g~Vehicle deleted")
          end 
        else 
          notify("~o~Must be in the driver's seat!")
            end
          end 
        end 
      end 
    end
  end
end
seats = {-1,0,1,2}
local seat = NativeUI.CreateSliderItem("Change Seats", seats, 1)
submenu:AddItem(seat)
submenu.OnSliderChange = function(sender, item, index)
    if item == seat then
      vehSeat = item:IndexToItem(index)
      local pedsCar = GetVehiclePedIsIn(GetPlayerPed(-1),false)
      SetPedIntoVehicle(PlayerPedId(), pedsCar, vehSeat)
    end
end
othermenu:AddItem(engine)
othermenu:AddItem(door2)
othermenu:AddItem(door1)
othermenu:AddItem(door3)
othermenu:AddItem(door4)
othermenu:AddItem(hood)
othermenu:AddItem(trunk)
othermenu.OnItemSelect = function(sender, item, index)
  if item == engine then
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
  if vehicle ~= nil and vehicle ~= 0 and GetPedInVehicleSeat(vehicle, 0) then
    SetVehicleEngineOn(vehicle, (not GetIsVehicleEngineRunning(vehicle)), false, true)
  end
else if item == door1 then
  local ped = PlayerPedId()
  local veh = GetVehiclePedIsIn(ped, false)
if veh ~= nil and veh ~= 0 and veh ~= 1 then
  if GetVehicleDoorAngleRatio(veh, 1) > 0 then
      SetVehicleDoorShut(veh, 1, false)
else
  SetVehicleDoorOpen(veh, 1, false, false)
end
end
else if item == door2 then
local ped = PlayerPedId()
local veh = GetVehiclePedIsIn(ped, false)
if veh ~= nil and veh ~= 0 and veh ~= 1 then
if GetVehicleDoorAngleRatio(veh, 0) > 0 then
  SetVehicleDoorShut(veh, 0, false)
else
SetVehicleDoorOpen(veh, 0, false, false)
end
end
else if item == door3 then
local ped = PlayerPedId()
local veh = GetVehiclePedIsIn(ped, false)
if veh ~= nil and veh ~= 0 and veh ~= 1 then
if GetVehicleDoorAngleRatio(veh, 2) > 0 then
  SetVehicleDoorShut(veh, 2, false)
else
SetVehicleDoorOpen(veh, 2, false, false)
end
end
else if item == door4 then
local ped = PlayerPedId()
local veh = GetVehiclePedIsIn(ped, false)
if veh ~= nil and veh ~= 0 and veh ~= 1 then
if GetVehicleDoorAngleRatio(veh, 3) > 0 then
  SetVehicleDoorShut(veh, 3, false)
else
SetVehicleDoorOpen(veh, 3, false, false)
end
end
else if item == hood then
  local ped = PlayerPedId()
  local veh = GetVehiclePedIsIn(ped, false)
if veh ~= nil and veh ~= 0 and veh ~= 1 then
  if GetVehicleDoorAngleRatio(veh, 4) > 0 then
      SetVehicleDoorShut(veh, 4, false)
else
  SetVehicleDoorOpen(veh, 4, false, false)
end
end
else if item == trunk then
  local ped = PlayerPedId()
local veh = GetVehiclePedIsIn(ped, false)
if veh ~= nil and veh ~= 0 and veh ~= 1 then
  if GetVehicleDoorAngleRatio(veh, 5) > 0 then
      SetVehicleDoorShut(veh, 5, false)
  else
      SetVehicleDoorOpen(veh, 5, false, false)
        end
      end
    end
  end
    end
      end
        end
      end
    end
  end
end


weapons = {
"weapon_knife",
"weapon_knightstick",
"weapon_hammer",
"weapon_bat",
"weapon_crowbar",
"weapon_golfclub",
"weapon_pistol",
"weapon_combatpistol",
"weapon_appistol",
"weapon_pistol50",
"weapon_microsmg",
"weapon_smg",
"weapon_assaultsmg",
"weapon_assaultrifle",
"weapon_carbinerifle",
"weapon_advancedrifle",
"weapon_pumpshotgun",
"weapon_fireextinguisher",
"weapon_flare",
"weapon_snspistol",
"weapon_heavypistol",
"weapon_bullpuprifle",
"weapon_dagger",
"weapon_vintagepistol",
"weapon_firework",
"weapon_flaregun",
"weapon_marksmanpistol",
"weapon_knuckle",
"weapon_hatchet",
"weapon_switchblade",
"weapon_revolver",
"weapon_battleaxe",
"weapon_minismg",
"weapon_poolcue",
"weapon_wrench",
}

function Weapons(menu)
local submenu = _menuPool:AddSubMenu(menu, "Weapons Menu", "Sub Menu for Weapons") 
local gunsList = NativeUI.CreateListItem("Get Weapons", weapons, 1)
  submenu.OnListSelect = function(sender, item, index)  
      if item == gunsList then
          local selectedGun = item:IndexToItem(index)
          giveWeapon(selectedGun)
          notify("Gave Weapon: "..selectedGun)
    end
  end
    local click = NativeUI.CreateItem("~r~Clear Weapon(s)", "Clears Peds Weapons")
    local weapon = NativeUI.CreateItem("~b~Give all Weapons")
    submenu.OnItemSelect = function (sender, item, index)
      if item == click then
        RemoveAllPedWeapons(GetPlayerPed(-1), true)
        notify("~r~Removed All Weapon(s)")
      else if item == weapon then
        giveWeapon("weapon_knife")
        giveWeapon("weapon_knightstick")
        giveWeapon("weapon_hammer")
        giveWeapon("weapon_bat")
        giveWeapon("weapon_crowbar")
        giveWeapon("weapon_golfclub")
        giveWeapon("weapon_pistol")
        giveWeapon("weapon_combatpistol")
        giveWeapon("weapon_appistol")
        giveWeapon("weapon_pistol50")
        giveWeapon("weapon_microsmg")
        giveWeapon("weapon_smg")
        giveWeapon("weapon_assaultsmg")
        giveWeapon("weapon_assaultrifle")
        giveWeapon("weapon_carbinerifle")
        giveWeapon("weapon_advancedrifle")
        giveWeapon("weapon_pumpshotgun")
        giveWeapon("weapon_fireextinguisher")
        giveWeapon("weapon_flare")
        giveWeapon("weapon_snspistol")
        giveWeapon("weapon_heavypistol")
        giveWeapon("weapon_bullpuprifle")
        giveWeapon("weapon_dagger")
        giveWeapon("weapon_vintagepistol")
        giveWeapon("weapon_firework")
        giveWeapon("weapon_flaregun")
        giveWeapon("weapon_marksmanpistol")
        giveWeapon("weapon_knuckle")
        giveWeapon("weapon_hatchet")
        giveWeapon("weapon_switchblade")
        giveWeapon("weapon_revolver")
        giveWeapon("weapon_battleaxe")
        giveWeapon("weapon_minismg")
        giveWeapon("weapon_poolcue")
        giveWeapon("weapon_wrench")
      end
  end
end
submenu:AddItem(gunsList)
submenu:AddItem(weapon)
submenu:AddItem(click)
end

peds = {
"a_f_m_beach_01",
"a_f_m_bevhills_01",
"a_f_m_bevhills_02",
"a_f_m_bodybuild_01",
"a_f_m_business_02",
"a_f_m_downtown_01",
"a_f_m_eastsa_01",
"a_f_m_eastsa_02",
"a_f_m_fatbla_01",
"a_f_m_fatcult_01",
"a_f_m_fatwhite_01",
"a_f_m_ktown_01",
"a_f_m_ktown_02",
"a_f_m_prolhost_01",
"a_f_m_salton_01",
"a_f_m_skidrow_01",
"a_f_m_soucent_01",
"a_f_m_soucent_02",
"a_f_m_soucentmc_01",
"a_f_m_tourist_01",
"a_f_m_tramp_01",
"a_f_m_trampbeac_01",
"a_f_o_genstreet_01",
"a_f_o_indian_01",
"a_f_o_ktown_01",
"a_f_o_salton_01",
"a_f_o_soucent_01",
"a_f_o_soucent_02",
"a_f_y_beach_01",
"a_f_m_bevhills_01",
"a_f_m_bevhills_02",
"a_f_m_bodybuild_01",
"a_f_m_business_02",
"a_f_m_downtown_01",
"a_f_m_eastsa_01",
"a_f_m_eastsa_02",
"a_f_m_fatbla_01",
"a_f_m_fatcult_01",
"a_f_m_fatwhite_01",
"a_f_m_ktown_01",
"a_f_m_ktown_02",
"a_f_m_prolhost_01",
"a_f_m_salton_01",
"a_f_m_skidrow_01",
"a_f_m_soucent_01",
"a_f_m_soucent_02",
"a_f_m_soucentmc_01",
"a_f_m_tourist_01",
"a_f_m_tramp_01",
"a_f_m_trampbeac_01",
"a_f_o_genstreet_01",
"a_f_o_indian_01",
"a_f_o_ktown_01",
"a_f_o_salton_01",
"a_f_o_soucent_01",
"a_f_o_soucent_02",
"a_f_y_beach_01",
"a_f_y_bevhills_01",
"a_f_y_bevhills_02",
"a_f_y_bevhills_03",
"a_f_y_bevhills_04",
"a_f_y_business_01",
"a_f_y_business_02",
"a_f_y_business_03",
"a_f_y_business_04",
"a_f_y_eastsa_01",
"a_f_y_eastsa_02",
"a_f_y_eastsa_03",
"a_f_y_epsilon_01",
"a_f_y_fitness_01",
"a_f_y_fitness_02",
"a_f_y_genhot_01",
"a_f_y_golfer_01",
"a_f_y_hiker_01",
"a_f_y_hippie_01",
"a_f_y_hipster_01",
"a_f_y_hipster_02",
"a_f_y_hipster_03",
"a_f_y_hipster_04",
"a_f_y_indian_01",
"a_f_y_juggalo_01",
"a_f_y_runner_01",
"a_f_y_rurmeth_01",
"a_f_y_scdressy_01",
"a_f_y_skater_01",
"a_f_y_soucent_01",
"a_f_y_soucent_02",
"a_f_y_soucent_03",
"a_f_y_tennis_01",
"a_f_y_topless_01",
"a_f_y_tourist_01",
"a_f_y_tourist_02",
"a_f_y_vinewood_01",
"a_f_y_vinewood_02",
"a_f_y_vinewood_03",
"a_f_y_vinewood_04",
"a_f_y_yoga_01",
"a_m_m_acult_01",
"a_m_m_afriamer_01",
"a_m_m_beach_01",
"a_m_m_beach_02",
"a_m_m_bevhills_01",
"a_m_m_bevhills_02",
"a_m_m_business_01",
"a_m_m_eastsa_01",
"a_m_m_eastsa_02",
"a_m_m_farmer_01",
"a_m_m_fatlatin_01",
"a_m_m_genfat_01",
"a_m_m_genfat_02",
"a_m_m_golfer_01",
"a_m_m_hasjew_01",
"a_m_m_hillbilly_01",
"a_m_m_hillbilly_02",
"a_m_m_indian_01",
"a_m_m_ktown_01",
"a_m_m_malibu_01",
"a_m_m_mexcntry_01",
"a_m_m_mexlabor_01",
"a_m_m_og_boss_01",
"a_m_m_paparazzi_01",
"a_m_m_polynesian_01",
"a_m_m_prolhost_01",
"a_m_m_rurmeth_01",
"a_m_m_salton_01",
"a_m_m_salton_02",
"a_m_m_salton_03",
"a_m_m_salton_04",
"a_m_m_skater_01",
"a_m_m_skidrow_01",
"a_m_m_socenlat_01",
"a_m_m_soucent_01",
"a_m_m_soucent_02",
"a_m_m_soucent_03",
"a_m_m_soucent_04",
"a_m_m_stlat_02",
"a_m_m_tennis_01",
"a_m_m_tourist_01",
"a_m_m_tramp_01",
"a_m_m_trampbeac_01",
"a_m_m_tranvest_01",
"a_m_m_tranvest_02",
"a_m_o_acult_01",
"a_m_o_acult_02",
"a_m_o_beach_01",
"a_m_o_genstreet_01",
"a_m_o_ktown_01",
"a_m_o_salton_01",
"a_m_o_soucent_01",
"a_m_o_soucent_02",
"a_m_o_soucent_03",
"a_m_o_tramp_01",
"a_m_y_acult_01",
"a_m_y_acult_02",
"a_m_y_beach_01",
"a_m_y_beach_02",
"a_m_y_beach_03",
"a_m_y_beachvesp_01",
"a_m_y_beachvesp_02",
"a_m_y_bevhills_01",
"a_m_y_bevhills_02",
"a_m_y_breakdance_01",
"a_m_y_busicas_01",
"a_m_y_business_01",
"a_m_y_business_02",
"a_m_y_business_03",
"a_m_y_cyclist_01",
"a_m_y_dhill_01",
"a_m_y_downtown_01",
"a_m_y_eastsa_01",
"a_m_y_eastsa_02",
"a_m_y_epsilon_01",
"a_m_y_epsilon_02",
"a_m_y_gay_01",
"a_m_y_gay_02",
"a_m_y_genstreet_01",
"a_m_y_genstreet_02",
"a_m_y_golfer_01",
"a_m_y_hasjew_01",
"a_m_y_hiker_01",
"a_m_y_hippy_01",
"a_m_y_hipster_01",
"a_m_y_hipster_02",
"a_m_y_hipster_03",
"a_m_y_indian_01",
"a_m_y_jetski_01",
"a_m_y_juggalo_01",
"a_m_y_ktown_01",
"a_m_y_ktown_02",
"a_m_y_latino_01",
"a_m_y_methhead_01",
"a_m_y_mexthug_01",
"a_m_y_motox_01",
"a_m_y_motox_02",
"a_m_y_musclbeac_01",
"a_m_y_musclbeac_02",
"a_m_y_polynesian_01",
"a_m_y_roadcyc_01",
"a_m_y_runner_01",
"a_m_y_runner_02",
"a_m_y_salton_01",
"a_m_y_skater_01",
"a_m_y_skater_02",
"a_m_y_soucent_01",
"a_m_y_soucent_02",
"a_m_y_soucent_03",
"a_m_y_soucent_04",
"a_m_y_stbla_01",
"a_m_y_stbla_02",
"a_m_y_stlat_01",
"a_m_y_stwhi_01",
"a_m_y_stwhi_02",
"a_m_y_sunbathe_01",
"a_m_y_surfer_01",
"a_m_y_vindouche_01",
"a_m_y_vinewood_01",
"a_m_y_vinewood_02",
"a_m_y_vinewood_03",
"a_m_y_vinewood_04",
"a_m_y_yoga_01",
"cs_amandatownley",
"cs_andreas",
"cs_ashley",
"cs_bankman",
"cs_barry",
"cs_beverly",
"cs_brad",
"cs_bradcadaver",
"cs_carbuyer",
"cs_casey",
"cs_chengsr",
"cs_chrisformage",
"cs_clay",
"cs_dale",
"cs_davenorton",
"cs_debra",
"cs_denise",
"cs_devin",
"cs_dom",
"cs_dreyfuss",
"cs_drfriedlander",
"cs_fabien",
"cs_fbisuit_01",
"cs_floyd",
"cs_guadalope",
"cs_gurk",
"cs_hunter",
"cs_janet",
"cs_jewelass",
"cs_jimmyboston",
"cs_jimmydisanto",
"cs_joeminuteman",
"cs_johnnyklebitz",
"cs_josef",
"cs_josh",
"cs_lamardavis",
"cs_lazlow",
"cs_lestercrest",
"cs_lifeinvad_01",
"cs_magenta",
"cs_manuel",
"cs_marnie",
"cs_martinmadrazo",
"cs_maryann",
"cs_michelle",
"cs_milton",
"cs_molly",
"cs_movpremf_01",
"cs_movpremmale",
"cs_mrk",
"cs_mrs_thornhill",
"cs_mrsphillips",
"cs_natalia",
"cs_nervousron",
"cs_nigel",
"cs_old_man1a",
"cs_old_man2",
"cs_omega",
"cs_orleans",
"cs_paper",
"cs_patricia",
"cs_priest",
"cs_prolsec_02",
"cs_russiandrunk",
"cs_siemonyetarian",
"cs_solomon",
"cs_stevehains",
"cs_stretch",
"cs_tanisha",
"cs_taocheng",
"cs_taostranslator",
"cs_tenniscoach",
"cs_terry",
"cs_tom",
"cs_tomepsilon",
"cs_tracydisanto",
"cs_wade",
"cs_zimbor",
"csb_abigail",
"csb_anita",
"csb_anton",
"csb_ballasog",
"csb_bride",
"csb_burgerdrug",
"csb_car3guy1",
"csb_car3guy2",
"csb_chef",
"csb_chin_goon",
"csb_cletus",
"csb_cop",
"csb_customer",
"csb_denise_friend",
"csb_fos_rep",
"csb_g",
"csb_groom",
"csb_grove_str_dlr",
"csb_hao",
"csb_hugh",
"csb_imran",
"csb_janitor",
"csb_maude",
"csb_mweather",
"csb_ortega",
"csb_oscar",
"csb_porndudes",
"csb_prologuedriver",
"csb_prolsec",
"csb_ramp_gang",
"csb_ramp_hic",
"csb_ramp_hipster",
"csb_ramp_marine",
"csb_ramp_mex",
"csb_reporter",
"csb_roccopelosi",
"csb_screen_writer",
"csb_stripper_01",
"csb_stripper_02",
"csb_tonya",
"csb_trafficwarden",
"csb_vagspeak",
"g_f_importexport_01",
"g_f_y_ballas_01",
"g_f_y_families_01",
"g_f_y_lost_01",
"g_f_y_vagos_01",
"g_m_importexport_01",
"g_m_m_armboss_01",
"g_m_m_armgoon_01",
"g_m_m_armlieut_01",
"g_m_m_chemwork_01",
"g_m_m_chiboss_01",
"g_m_m_chicold_01",
"g_m_m_chigoon_01",
"g_m_m_chigoon_02",
"g_m_m_korboss_01",
"g_m_m_mexboss_01",
"g_m_m_mexboss_02",
"g_m_y_armgoon_02",
"g_m_y_azteca_01",
"g_m_y_ballaeast_01",
"g_m_y_ballaorig_01",
"g_m_y_ballasout_01",
"g_m_y_famca_01",
"g_m_y_famdnf_01",
"g_m_y_famfor_01",
"g_m_y_korean_01",
"g_m_y_korean_02",
"g_m_y_korlieut_01",
"g_m_y_lost_01",
"g_m_y_lost_02",
"g_m_y_lost_03",
"g_m_y_mexgang_01",
"g_m_y_mexgoon_01",
"g_m_y_mexgoon_02",
"g_m_y_mexgoon_03",
"g_m_y_pologoon_01",
"g_m_y_pologoon_02",
"g_m_y_salvaboss_01",
"g_m_y_salvagoon_01",
"g_m_y_salvagoon_02",
"g_m_y_salvagoon_03",
"g_m_y_strpunk_01",
"g_m_y_strpunk_02",
"hc_driver",
"hc_gunman",
"hc_hacker",
"ig_abigail",
"ig_amandatownley",
"ig_andreas",
"ig_ashley",
"ig_ballasog",
"ig_bankman",
"ig_barry",
"ig_benny",
"ig_bestmen",
"ig_beverly",
"ig_brad",
"ig_bride",
"ig_car3guy1",
"ig_car3guy2",
"ig_casey",
"ig_chef",
"ig_chengsr",
"ig_chrisformage",
"ig_clay",
"ig_claypain",
"ig_cletus",
"ig_dale",
"ig_davenorton",
"ig_denise",
"ig_devin",
"ig_dom",
"ig_dreyfuss",
"ig_drfriedlander",
"ig_fabien",
"ig_fbisuit_01",
"ig_floyd",
"ig_g",
"ig_groom",
"ig_hao",
"ig_hunter",
"ig_janet",
"ig_jay_norris",
"ig_jewelass",
"ig_jimmyboston",
"ig_jimmydisanto",
"ig_joeminuteman",
"ig_johnnyklebitz",
"ig_josef",
"ig_josh",
"ig_kerrymcintosh",
"ig_lamardavis",
"ig_lazlow",
"ig_lestercrest",
"ig_lifeinvad_01",
"ig_lifeinvad_02",
"ig_magenta",
"ig_malc",
"ig_manuel",
"ig_marnie",
"ig_maryann",
"ig_maude",
"ig_michelle",
"ig_milton",
"ig_molly",
"ig_mrk",
"ig_mrs_thornhill",
"ig_mrsphillips",
"ig_natalia",
"ig_nervousron",
"ig_nigel",
"ig_old_man1a",
"ig_old_man2",
"ig_omega",
"ig_oneil",
"ig_orleans",
"ig_ortega",
"ig_paper",
"ig_patricia",
"ig_priest",
"ig_prolsec_02",
"ig_ramp_gang",
"ig_ramp_hic",
"ig_ramp_hipster",
"ig_ramp_mex",
"ig_roccopelosi",
"ig_russiandrunk",
"ig_screen_writer",
"ig_siemonyetarian",
"ig_solomon",
"ig_stevehains",
"ig_stretch",
"ig_talina",
"ig_tanisha",
"ig_taocheng",
"ig_taostranslator",
"ig_tenniscoach",
"ig_terry",
"ig_tomepsilon",
"ig_tonya",
"ig_tracydisanto",
"ig_trafficwarden",
"ig_tylerdix",
"ig_vagspeak",
"ig_wade",
"ig_zimbor",
"mp_f_boatstaff_01",
"mp_f_cardesign_01",
"mp_f_chbar_01",
"mp_f_cocaine_01",
"mp_f_counterfeit_01",
"mp_f_deadhooker",
"mp_f_execpa_01",
"mp_f_forgery_01",
"mp_f_freemode_01",
"mp_f_helistaff_01",
"mp_f_meth_01",
"mp_f_misty_01",
"mp_f_stripperlite",
"mp_f_weed_01",
"mp_g_m_pros_01",
"mp_headtargets",
"mp_m_boatstaff_01",
"mp_m_claude_01",
"mp_m_cocaine_01",
"mp_m_counterfeit_01",
"mp_m_exarmy_01",
"mp_m_execpa_01",
"mp_m_famdd_01",
"mp_m_fibsec_01",
"mp_m_forgery_01",
"mp_m_freemode_01",
"mp_m_g_vagfun_01",
"mp_m_marston_01",
"mp_m_meth_01",
"mp_m_niko_01",
"mp_m_securoguard_01",
"mp_m_shopkeep_01",
"mp_m_waremech_01",
"mp_m_weed_01",
"mp_s_m_armoured_01",
"player_one",
"player_two",
"player_zero",
"s_f_m_fembarber",
"s_f_m_maid_01",
"s_f_m_shop_high",
"s_f_m_sweatshop_01",
"s_f_y_airhostess_01",
"s_f_y_bartender_01",
"s_f_y_baywatch_01",
"s_f_y_cop_01",
"s_f_y_factory_01",
"s_f_y_hooker_01",
"s_f_y_hooker_02",
"s_f_y_hooker_03",
"s_f_y_migrant_01",
"s_f_y_movprem_01",
"s_f_y_ranger_01",
"s_f_y_scrubs_01",
"s_f_y_sheriff_01",
"s_f_y_shop_low",
"s_f_y_shop_mid",
"s_f_y_stripper_01",
"s_f_y_stripper_02",
"s_f_y_stripperlite",
"s_f_y_sweatshop_01",
"s_m_m_ammucountry",
"s_m_m_armoured_01",
"s_m_m_armoured_02",
"s_m_m_autoshop_01",
"s_m_m_autoshop_02",
"s_m_m_bouncer_01",
"s_m_m_chemsec_01",
"s_m_m_ciasec_01",
"s_m_m_cntrybar_01",
"s_m_m_dockwork_01",
"s_m_m_doctor_01",
"s_m_m_fiboffice_01",
"s_m_m_fiboffice_02",
"s_m_m_gaffer_01",
"s_m_m_gardener_01",
"s_m_m_gentransport",
"s_m_m_hairdress_01",
"s_m_m_highsec_01",
"s_m_m_highsec_02",
"s_m_m_janitor",
"s_m_m_lathandy_01",
"s_m_m_lifeinvad_01",
"s_m_m_linecook",
"s_m_m_lsmetro_01",
"s_m_m_mariachi_01",
"s_m_m_marine_01",
"s_m_m_marine_02",
"s_m_m_migrant_01",
"s_m_m_movalien_01",
"s_m_m_movprem_01",
"s_m_m_movspace_01",
"s_m_m_paramedic_01",
"s_m_m_pilot_01",
"s_m_m_pilot_02",
"s_m_m_postal_01",
"s_m_m_postal_02",
"s_m_m_prisguard_01",
"s_m_m_scientist_01",
"s_m_m_security_01",
"s_m_m_snowcop_01",
"s_m_m_strperf_01",
"s_m_m_strpreach_01",
"s_m_m_strvend_01",
"s_m_m_trucker_01",
"s_m_m_ups_01",
"s_m_m_ups_02",
"s_m_o_busker_01",
"s_m_y_airworker",
"s_m_y_ammucity_01",
"s_m_y_armymech_01",
"s_m_y_autopsy_01",
"s_m_y_barman_01",
"s_m_y_baywatch_01",
"s_m_y_blackops_01",
"s_m_y_blackops_02",
"s_m_y_busboy_01",
"s_m_y_chef_01",
"s_m_y_clown_01",
"s_m_y_construct_01",
"s_m_y_construct_02",
"s_m_y_cop_01",
"s_m_y_dealer_01",
"s_m_y_devinsec_01",
"s_m_y_dockwork_01",
"s_m_y_doorman_01",
"s_m_y_dwservice_01",
"s_m_y_dwservice_02",
"s_m_y_factory_01",
"s_m_y_fireman_01",
"s_m_y_garbage",
"s_m_y_grip_01",
"s_m_y_hwaycop_01",
"s_m_y_marine_01",
"s_m_y_marine_02",
"s_m_y_marine_03",
"s_m_y_mime",
"s_m_y_pestcont_01",
"s_m_y_pilot_01",
"s_m_y_prismuscl_01",
"s_m_y_prisoner_01",
"s_m_y_ranger_01",
"s_m_y_robber_01",
"s_m_y_sheriff_01",
"s_m_y_shop_mask",
"s_m_y_strvend_01",
"s_m_y_swat_01",
"s_m_y_uscg_01",
"s_m_y_valet_01",
"s_m_y_waiter_01",
"s_m_y_winclean_01",
"s_m_y_xmech_01",
"s_m_y_xmech_02",
"s_m_y_xmech_02_mp",
"u_f_m_corpse_01",
"u_f_m_miranda",
"u_f_m_promourn_01",
"u_f_o_moviestar",
"u_f_o_prolhost_01",
"u_f_y_bikerchic",
"u_f_y_comjane",
"u_f_y_corpse_01",
"u_f_y_corpse_02",
"u_f_y_hotposh_01",
"u_f_y_jewelass_01",
"u_f_y_mistress",
"u_f_y_poppymich",
"u_f_y_princess",
"u_f_y_spyactress",
"u_m_m_aldinapoli",
"u_m_m_bankman",
"u_m_m_bikehire_01",
"u_m_m_fibarchitect",
"u_m_m_filmdirector",
"u_m_m_glenstank_01",
"u_m_m_griff_01",
"u_m_m_jesus_01",
"u_m_m_jewelsec_01",
"u_m_m_jewelthief",
"u_m_m_markfost",
"u_m_m_partytarget",
"u_m_m_prolsec_01",
"u_m_m_promourn_01",
"u_m_m_rivalpap",
"u_m_m_spyactor",
"u_m_m_willyfist",
"u_m_o_finguru_01",
"u_m_o_taphillbilly",
"u_m_o_tramp_01",
"u_m_y_abner",
"u_m_y_antonb",
"u_m_y_babyd",
"u_m_y_baygor",
"u_m_y_burgerdrug_01",
"u_m_y_chip",
"u_m_y_cyclist_01",
"u_m_y_fibmugger_01",
"u_m_y_guido_01",
"u_m_y_gunvend_01",
"u_m_y_hippie_01",
"u_m_y_imporage",
"u_m_y_justin",
"u_m_y_mani",
"u_m_y_militarybum",
"u_m_y_paparazzi",
"u_m_y_party_01",
"u_m_y_pogo_01",
"u_m_y_prisoner_01",
"u_m_y_proldriver_01",
"u_m_y_rsranger_01",
"u_m_y_sbike",
"u_m_y_staggrm_01",
"u_m_y_tattoo_01",
"u_m_y_zombie_01",
}

--Replace following the template u_m_y_tattoo_01 with your addon peds
--[[
TEMPLATE: "",
The Template MUST have " before and " after the PEDS spawn code and , to move onto the next line
]]
apeds = {
"DONT_SPAWN",
}

function PlayerMenu(menu)
local submenu = _menuPool:AddSubMenu(menu, "Player Menu", "Sub Menu for Player Related Options")
local othermenu = _menuPool:AddSubMenu(submenu, "~b~Weapons Menu", "Sub Menu for Weapons") 
local armour = NativeUI.CreateItem("Get Armour ~w~[~g~On ~w~/~r~ Off~w~]", "Gives Player Ped Armour")
local heal = NativeUI.CreateItem("Heal Player", "Heals Player Ped")
local tp = NativeUI.CreateItem("Teleport To Waypoint", "Teleports Ped to Waypoint")
local nwanted = NativeUI.CreateItem("Remove Wanted", "Removes Player Wanted Level")
local iwanted = NativeUI.CreateItem("Increase Wanted", "Increases Player Wanted Level")
local suicide = NativeUI.CreateItem("~r~Commit Suicide", "Kills Player")
submenu:AddItem(heal)
submenu:AddItem(armour)
submenu:AddItem(nwanted)
submenu:AddItem(iwanted)
submenu:AddItem(suicide)
submenu.OnItemSelect = function(sender, item, index)
  if item == armour then 
    armouron = not armouron
    if armouron then
    SetPedArmour(GetPlayerPed(-1), 50)
    notify("~g~Player Got Armour.")
  else
    SetPedArmour(GetPlayerPed(-1), 0)
    notify("~r~Player Armour Removed")
  end
  else if item == suicide then
    SetEntityHealth(GetPlayerPed(-1), 0)
  else if item == heal then
    SetEntityHealth(PlayerPedId(), 200)
    notify("~g~Player Healed")
  else if item == nwanted then
  if GetPlayerWantedLevel(PlayerId()) ~= 0 then
    SetPlayerWantedLevel(PlayerId(), 0, false)
    SetPlayerWantedLevelNow(PlayerId(), false)
    notify("~g~Wanteld Level gone")
  else
    notify("~r~You are not wanted")
  end
  else if item == iwanted then
    local level = GetPlayerWantedLevel(PlayerId())
    if level < 5 then
      SetPlayerWantedLevel(PlayerId(), level + 1, false)
      SetPlayerWantedLevelNow(PlayerId(), true)
      notify("~b~Wanted level increased")
            end
          end
        end
      end
    end
  end
end
local pedsList = NativeUI.CreateListItem("Change Peds", peds, 1, "Changes Player Ped")
--local apedsList = NativeUI.CreateListItem("Change Addon Peds", apeds, 1, "~r~DONT SPAWN UNTIL EDITED OR ELSE MENU WILL CRASH")
submenu:AddItem(pedsList)
--submenu:AddItem(apedsList)
submenu.OnListSelect = function(sender, item, index)
if item == pedsList then
  local selectedPed = item:IndexToItem(index)
  loadModel(selectedPed)
  notify("~g~Ped Changed: "..selectedPed)
--[[else if item == apedsList then
  local selectedaPed = item:IndexToItem(index)
  loadModel(selectedaPed)
  notify("~g~Ped Changed: "..selectedaPed)
    end]]
  end
end
local gunsList = NativeUI.CreateListItem("Get Weapons", weapons, 1)
othermenu.OnListSelect = function(sender, item, index)  
      if item == gunsList then
          local selectedGun = item:IndexToItem(index)
          giveWeapon(selectedGun)
          notify("Gave Weapon: "..selectedGun)
    end
  end
    local click = NativeUI.CreateItem("~r~Clear Weapon(s)", "Clears Peds Weapons")
    local weapon = NativeUI.CreateItem("~b~Give all Weapons", "")
    othermenu:AddItem(gunsList)
    othermenu:AddItem(weapon)
    othermenu:AddItem(click)
    othermenu.OnItemSelect = function (sender, item, index)
      if item == click then
        RemoveAllPedWeapons(GetPlayerPed(-1), true)
        notify("~r~Removed All Weapon(s)")
      else if item == weapon then
        giveWeapon("weapon_knife")
        giveWeapon("weapon_knightstick")
        giveWeapon("weapon_hammer")
        giveWeapon("weapon_bat")
        giveWeapon("weapon_crowbar")
        giveWeapon("weapon_golfclub")
        giveWeapon("weapon_pistol")
        giveWeapon("weapon_combatpistol")
        giveWeapon("weapon_appistol")
        giveWeapon("weapon_pistol50")
        giveWeapon("weapon_microsmg")
        giveWeapon("weapon_smg")
        giveWeapon("weapon_assaultsmg")
        giveWeapon("weapon_assaultrifle")
        giveWeapon("weapon_carbinerifle")
        giveWeapon("weapon_advancedrifle")
        giveWeapon("weapon_pumpshotgun")
        giveWeapon("weapon_fireextinguisher")
        giveWeapon("weapon_flare")
        giveWeapon("weapon_snspistol")
        giveWeapon("weapon_heavypistol")
        giveWeapon("weapon_bullpuprifle")
        giveWeapon("weapon_dagger")
        giveWeapon("weapon_vintagepistol")
        giveWeapon("weapon_firework")
        giveWeapon("weapon_flaregun")
        giveWeapon("weapon_marksmanpistol")
        giveWeapon("weapon_knuckle")
        giveWeapon("weapon_hatchet")
        giveWeapon("weapon_switchblade")
        giveWeapon("weapon_revolver")
        giveWeapon("weapon_battleaxe")
        giveWeapon("weapon_minismg")
        giveWeapon("weapon_poolcue")
        giveWeapon("weapon_wrench")
        notify("~g~Weapons Given")
      end
  end
end
end

function Admin(menu)
  local submenu = _menuPool:AddSubMenu(menu, "Admin Menu", "Sub Menu for Admin Related Options")
  local godmode = NativeUI.CreateItem("~r~God Mode ~w~[~g~On~w~ / ~r~Off]", "Gives Player Ped God Mode")
  --local godmode2 = NativeUI.CreateItem("~r~God Mode [Off]", "Removes Player Ped God Mode")
  local gone = NativeUI.CreateItem("~r~Invisibility ~w~[~g~On~w~ / ~r~Off]", "Gives Player Ped Invisibility")
  --local gone2 = NativeUI.CreateItem("~r~Invisible [Off]", "Removes Player Ped Invisibility")
  local fswim = NativeUI.CreateItem("~o~Fast Swim ~w~[~g~On~w~ / ~r~Off]", "Swim Faster")
  local fsprint = NativeUI.CreateItem("~o~Fast Sprint ~w~[~g~On~w~ / ~r~Off]", "Spring Faster")
  submenu:AddItem(godmode)
  submenu:AddItem(gone)
  submenu:AddItem(fsprint)
  submenu:AddItem(fswim)
  submenu.OnItemSelect = function(sender, item, index)
  if item == godmode then 
    if allowedToUse then
      god = not god
      if god then
      SetEntityInvincible(GetPlayerPed(-1), true)
      notify("~g~God Mode On")
    else
      SetEntityInvincible(GetPlayerPed(-1), false)
      notify("~r~God Mode Off")
    end
    else
      notify("~r~You don't have permission")
    end
   else if item == gone then 
      if allowedToUse then
        Invisible = not Invisible
        if Invisible then
        SetEntityVisible(GetPlayerPed(-1), false)
        notify("~g~Invisibility is now On")
      else
        SetEntityVisible(GetPlayerPed(-1), true)
        notify("~r~Invisibility is now Off")
      end
      else
        notify("~r~You don't have permission")
      end
    else if item == fswim then
      if allowedToUse then
      fastSwim = not fastSwim
      if fastSwim then
        SetSwimMultiplierForPlayer(PlayerId(), 1.49)
        notify("Fast Swim is now On")
      else
        SetSwimMultiplierForPlayer(PlayerId(), 1.0)
        notify("~r~Fast Swim is now Off")
      end
      else
        notify("~r~You don't have permission") 
      end
      else if item == fsprint then
        if allowedToUse then
        fastSprint = not fastSprint
        if fastSprint then
          SetRunSprintMultiplierForPlayer(PlayerId(), 1.49)
          notify("Fast Sprint is now On")
      else
        SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
        notify("~r~Fast Sprint is now Off")
      end
      else
        notify("~r~You don't have permission") 
      end
            end
          end
        end
      end
    end
  end

function AddMenu_Close(menu)
	local Item = NativeUI.CreateItem("~r~Close Menu", "")
   	Item.Activated = function(ParentMenu, SelectedItem)
   		mainMenu:Visible(not mainMenu:Visible())
   	end
	menu:AddItem(Item)
end

function AddMenu_Civilian(menu)
  local submenu = _menuPool:AddSubMenu(menu, "Civilian Menu")
  for i = 1, 1, 1 do
    local Item = NativeUI.CreateItem("Handsup", "Put your hands up")
    Item.Activated = function(ParentMenu, SelectedItem)
      MENU_HANDSUP()
    end
      submenu:AddItem(Item)
  local Item = NativeUI.CreateItem("Kneel Handsup", "Put your hands up on knees")
    Item.Activated = function(ParentMenu, SelectedItem)
      MENU_HANDSUPKNEES()
    end
      submenu:AddItem(Item)
  end
end

  function MENU_HANDSUP()
  local lPed = GetPlayerPed(-1)
    if DoesEntityExist(lPed) and not IsPedInAnyVehicle(lPed) then
      if not IsEntityPlayingAnim(lPed, "mp_arresting", "idle", 3) then
        RequestAnimDict("random@mugging3")
        while not HasAnimDictLoaded("random@mugging3") do
          Citizen.Wait(50)
        end
  
        if IsEntityPlayingAnim(lPed, "random@mugging3", "handsup_standing_base", 3) then
          ClearPedSecondaryTask(lPed)
        else
          TaskPlayAnim(lPed, "random@mugging3", "handsup_standing_base", 8.0, -8, -1, 49, 0, 0, 0, 0)
        end
      end
    elseif IsPedInAnyVehicle(lPed) then
      ShowNotification(' ~w~Please exit the vehicle to be avail to use this animation.')
    end
  end

  function MENU_HANDSUPKNEES()
    local player = GetPlayerPed( -1 )
    if ( DoesEntityExist( player ) and not IsEntityDead( player )) and not IsPedInAnyVehicle(player) then
          loadAnimDict( "random@arrests" )
      loadAnimDict( "random@arrests@busted" )
      if ( IsEntityPlayingAnim( player, "random@arrests@busted", "idle_a", 3 ) ) then
        TaskPlayAnim( player, "random@arrests@busted", "exit", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
        Wait (50)
              TaskPlayAnim( player, "random@arrests", "kneeling_arrest_get_up", 8.0, 1.0, -1, 128, 0, 0, 0, 0 )
          else
              TaskPlayAnim( player, "random@arrests", "idle_2_hands_up", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
        Wait (75)
              TaskPlayAnim( player, "random@arrests", "kneeling_arrest_idle", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
        Wait (500)
        TaskPlayAnim( player, "random@arrests@busted", "enter", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
        Wait (500)
        TaskPlayAnim( player, "random@arrests@busted", "idle_a", 8.0, 1.0, -1, 9, 0, 0, 0, 0 )
          end
    elseif IsPedInAnyVehicle(player) then
      ShowNotification(' ~w~Please exit the vehicle to be avail to use this animation.')
    end
  end

  function loadAnimDict( dict )
      while ( not HasAnimDictLoaded( dict ) ) do
          RequestAnimDict( dict )
          Citizen.Wait( 5 )
    end
end

Admin(mainMenu)
Emergency(mainMenu)
AddMenu_Civilian(mainMenu)
PlayerMenu(mainMenu)
Cars(mainMenu)
--Weapons(mainMenu)
Teleport(mainMenu)
AddMenu_Close(mainMenu)
_menuPool:RefreshIndex()
_menuPool:MouseControlsEnabled(false)
_menuPool:ControlDisablingEnabled(false)
_menuPool:RefreshIndex()

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    _menuPool:ProcessMenus()
    if IsControlJustPressed(1, 167) then
      mainMenu:Visible(not mainMenu:Visible())
      end
  end
end)

--Perm Version of the above!

--[[Citizen.CreateThread(function()
  while true do
      Citizen.Wait(0)
      _menuPool:ProcessMenus()
      if IsControlJustPressed(1, 167) then
      if allowedToUse then
          mainMenu:Visible(not mainMenu:Visible())
end
      end
  end
end)]]

function notify(text)
SetNotificationTextEntry("STRING")
AddTextComponentString(text)
DrawNotification(true, true)
end

function giveWeapon(hash)
GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(hash), 999, false, false)
end

function spawnCar(car)
local car = GetHashKey(car)

RequestModel(car)
while not HasModelLoaded(car) do
RequestModel(car)
Citizen.Wait(50)
end

local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), false))
local vehicle = CreateVehicle(car, x + 2, y + 2, z + 1, GetEntityHeading(PlayerPedId()), true, false)
SetPedIntoVehicle(PlayerPedId(), vehicle, -1)
  
  SetEntityAsNoLongerNeeded(vehicle)
  SetModelAsNoLongerNeeded(vehicleName)
end

function loadModel(modelHash)
local model = GetHashKey(modelHash)
RequestModel(model)
while not HasModelLoaded(model) do
  RequestModel(model)
  Citizen.Wait(0)
end
SetPlayerModel(localPed, model)
SetModelAsNoLongerNeeded(model)
end

function deleteCar( entity )
Citizen.InvokeNative( 0xEA386986E786A54F, Citizen.PointerValueIntInitialized( entity ) )
end

function GetVehicleInDirection( coordFrom, coordTo )
local rayHandle = CastRayPointToPoint( coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 10, GetPlayerPed( -1 ), 0 )
local _, _, _, _, vehicle = GetRaycastResult( rayHandle )
return vehicle
end

function ShowNotification( text )
SetNotificationTextEntry( "STRING" )
AddTextComponentString( text )
DrawNotification( false, false )
end
  
  Citizen.CreateThread(function()
      while true do
          Citizen.Wait(0) 
          HandcuffLoop()
          DragLoop()
      end
  end)

  function loadAnim( dict )
      while ( not HasAnimDictLoaded( dict ) ) do
          RequestAnimDict( dict )
          Citizen.Wait( 5 )
      end
  end

  function HandcuffLoop()
      if isPedHandcuffed then
          if IsEntityPlayingAnim(GetPlayerPed(PlayerId()), "mp_arresting", "idle", 3) and isPedHandcuffed == true then
              DisableControlAction(0,21,true) -- disable sprint
              DisableControlAction(0,24,true) -- disable attack
              DisableControlAction(0,25,true) -- disable aim
              DisableControlAction(0,47,true) -- disable weapon
              DisableControlAction(0,58,true) -- disable weapon
              DisableControlAction(0,263,true) -- disable melee
              DisableControlAction(0,264,true) -- disable melee
              DisableControlAction(0,257,true) -- disable melee
              DisableControlAction(0,140,true) -- disable melee
              DisableControlAction(0,141,true) -- disable melee
              DisableControlAction(0,142,true) -- disable melee
              DisableControlAction(0,143,true) -- disable melee
              DisableControlAction(0,75,true) -- disable exit vehicle
              DisableControlAction(27,75,true) -- disable exit vehicle
  
              DisableControlAction(0,32,true) -- move (w)
              DisableControlAction(0,34,true) -- move (a)
              DisableControlAction(0,33,true) -- move (s)
              DisableControlAction(0,35,true) -- move (d)
          elseif not IsEntityPlayingAnim(GetPlayerPed(PlayerId()), "mp_arresting", "idle", 3) and isPedHandcuffed == true then
              local lPed = GetPlayerPed(-1)
              TaskPlayAnim(lPed, "mp_arresting", "idle", 8.0, -8, -1, 49, 0, 0, 0, 0)
          end
      else
          isPedHandcuffed = false
      end
      if IsPedRagdoll(GetPlayerPed(PlayerId())) and IsEntityPlayingAnim(GetPlayerPed(PlayerId()), "mp_arresting", "idle", 3) and isPedHandcuffed == true then
          local lPed = GetPlayerPed(-1)
          TaskPlayAnim(lPed, "mp_arresting", "idle", 8.0, -8, -1, 49, 0, 0, 0, 0)
      end
  end

  function DragLoop()
      if drag then
          local PED = GetPlayerPed(GetPlayerFromServerId(officerDrag))
          local MYPED = GetPlayerPed(-1)
  
          AttachEntityToEntity(MYPED, PED, 4103, 11816, 0.48, 0.00, 0.0, 0.0, 0.0, false, false, false, false, 2, false)
      else
          DetachEntity(GetPlayerPed(-1), true, false)
      end
  end
  
  function ShowNotification(text)
      SetNotificationTextEntry("STRING")
      AddTextComponentString(text)
      DrawNotification(false, false)
  end
  
  function GetClosePlayer()
      local players = GetPlayers()
      local closestDistance = -1
      local closestPlayer = -1
      local ped = GetPlayerPed(-1)
      local pedCoords = GetEntityCoords(ped, 0)
  
      for index, value in ipairs(players) do
          local target = GetPlayerPed(value)
  
          if target ~= ped then
              local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
              local distance = Vdist(targetCoords['x'], targetCoords['y'], targetCoords['z'], pedCoords['x'], pedCoords['y'], pedCoords['z'])
  
              if closestDistance == -1 or closestDistance > distance then
                  closestPlayer = value
                  closestDistance = distance
              end
          end
      end
  
      return closestPlayer, closestDistance
  end