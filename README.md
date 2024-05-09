# LGF CORE 

```cfg
LGF CORE is a reliable companion for developers on FiveM, offering simple yet powerful tools for creating unique gaming experiences. With a humble and intuitive approach, this framework makes it easy to work with external dependencies and provides clear documentation to simplify learning and usage.

## Features 🛠️

- **Essential Utilities:** LegacyFramework provides a set of indispensable functions to manage crucial aspects of the game, such as economy, player groups, and permissions.

- **Ease of Use:** Thanks to detailed and understandable documentation, the framework is accessible even to less experienced developers, allowing them to quickly start creating custom scripts.

- **Flexibility:** With the ability to work with external dependencies, LegacyFramework allows developers to easily integrate additional resources into their projects, expanding functionality and creative possibilities.

In short, LegacyFramework is designed to streamline the development process on FiveM, offering developers a simple and flexible tool to create engaging gaming experiences.
```
- [x] Write the press release
- [ ] Update the website
- [ ] Contact the media
<hr style="border-radius: 50%; margin: 0 25px;">

# Server Functions


```lua
-- Set Player Money At Bank Account
LegacyFramework.SvPlayerFunctions.SetPlayerMoneyBank(playerId, amount)
-- Set Player Money Cash
LegacyFramework.SvPlayerFunctions.SetPlayerMoneyCash(playerId, amount)
-- Get Player Money Cash
LegacyFramework.SvPlayerFunctions.GetPlayerMoneyCash(src)
-- Get Player Money Account Bank
LegacyFramework.SvPlayerFunctions.GetPlayerMoneyBank(src)
-- Get society Data
LegacyFramework.SvPlayerFunctions.GetSocietyFounds(societyName)
-- Update Society Founds
LegacyFramework.SvPlayerFunctions.UpdateSocietyFounds(societyName, additionalFounds)
-- Remove Society Founds
LegacyFramework.SvPlayerFunctions.RemoveSocietyFounds(societyName, removedFounds)
-- Create Command With Group and Params
LegacyFramework.SvUtils.CreateNewCommand(commandData)
-- Create New Groups
LegacyFramework.SvPlayerFunctions.CreateGroup(groupName, permissions)
-- Assign Player Group
LegacyFramework.SvPlayerFunctions.AssignGroupToPlayer(playerId, groupName)
-- Get Player Group
LegacyFramework.SvPlayerFunctions.GetPlayerGroup(playerId)
-- Check If Group Exist 
LegacyFramework.SvUtils.CheckGroupExists(group)
-- Get All Players 
LegacyFramework.SvPlayerFunctions.GetAllPlayers()
-- Get Player Data SV
LegacyFramework.SvPlayerFunctions.GetPlayerData(playerId)
-- Get Player Job
LegacyFramework.SvPlayerFunctions.GetJobPlayer(playerId)
-- Get Player Job Grade
LegacyFramework.SvPlayerFunctions.GetGradeJobPlayer(playerId)
-- Return Player Is Online or not 
LegacyFramework.SvPlayerFunctions.GetPlayerOnline(playerId)
-- Check Player is Authorized
LegacyFramework.SvUtils.IsPlayerAuthorized(playerId, permission)
-- Check if Job exist
LegacyFramework.SvUtils.CheckJobExists(job)
-- Check if Job and  Grade exist
LegacyFramework.SvUtils.CheckGradeExists(job, grade)
-- Set A Player Job
LegacyFramework.SvUtils.SetJob(playerId, job, Grade)
-- Set Group at Player
LegacyFramework.SvUtils.SetGroup(playerId, Group)
-- Delete Player Char
LegacyFramework.SvPlayerFunctions.DeletePlayerChar(playerId)
```

# Client Functions


```lua
-- Return All Player Data
LegacyFramework.PlayerFunctions.GetClientData()
-- Create Vehicle Client Side
LegacyFramework.VehicleFunctions.CreateVehicle(modelHash, position, heading)
-- Create Animation with Params
LegacyFramework.Utils.PlayAnimation(animationParams)
-- Delete Vehicle at Radius
LegacyFramework.VehicleFunctions.DeleteVehiclesNearby(radius)
-- Return Closest vehicle
LegacyFramework.VehicleFunctions.GetClosestVehicle(playerPed, maxDistance)
-- Create Object
LegacyFramework.Utils.CreateObject(modelHash, posX, posY, posZ, heading)
-- Teleport Enmtity
LegacyFramework.Utils.TeleportCoords(ped, x, y, z, heading)
-- Return Client Id 
LegacyFramework.PlayerFunctions.GetIdPlayer()
-- Return Player Name (steam)
LegacyFramework.PlayerFunctions.GetPlayerName()
-- Return Player Healt
LegacyFramework.PlayerFunctions.GetPlayerHealth(ped)
-- Return Player Stamina
LegacyFramework.PlayerFunctions.GetPlayerStamina()
-- Return Player Oxygen
LegacyFramework.PlayerFunctions.GetPlayerOxygen()
-- Return Player Armour
LegacyFramework.PlayerFunctions.GetPlayerArmour(ped)
-- Create Draw Notification 
LegacyFramework.Utils.DrawNotification(title, message, version)
-- Enable Fade In 
LegacyFramework.Utils.FadeIn(duration)
-- Enable Fade Out
LegacyFramework.Utils.FadeOut(duration)
-- Create Ped
LegacyFramework.Utils.CreatePed(modelPed, x, y, z, heading)
-- Create KeyBind
LegacyFramework.Utils.CreateKeyBind(DataBind)
-- Create Draw Marker
LegacyFramework.Utils.CreateDrawMarker(parameters)
-- Create Zones
LegacyFramework.Utils.CreateZone(zoneData)
 -- Remove Zone
LegacyFramework.Utils.RemoveZone(zoneID)
-- Return Vehicle Prop 
LegacyFramework.VehicleFunctions.GetVehicleProps(vehicle)
-- Set Vehicle Props 
LegacyFramework.VehicleFunctions.SetVehicleProps(vehicle, props, propValueCustom)
-- Enable ProgressBars [dependency LGF_ProgressBar]
LegacyFramework.Utils.ProgressBar(color, duration, label)
-- Create Notification
LegacyFramework.Utils.Notify(icon, colorIcon, message, title, tipo, position, bgColor, duration)
-- Set healt At Player
LegacyFramework.PlayerFunctions.SetPlayerHealth(health)
-- Set Hunger At Player
LegacyFramework.PlayerFunctions.SetHunger(value)
-- Set Thirst At Player
LegacyFramework.PlayerFunctions.SetThirst(value)
-- Get Player Hunger
LegacyFramework.PlayerFunctions.GetHungerValue()
-- Get Player Thirst
LegacyFramework.PlayerFunctions.GetThirstValue()
```

<hr style="border-radius: 50%; margin: 0 25px;">


# Server Events


```lua
-- on player Logout
RegisterServerEvent('LegacyFramework:onPlayerLogout')
AddEventHandler('LegacyFramework:onPlayerLogout', function()
    local _source = source
    print('player in logout', _source)
end)

-- On Server Spawn
RegisterNetEvent("LegacyFramework:OnServerPlayerSpawned", function()
    local _source = source
    print('spawned server side', _source)
end)

-- Retrive Society Data
- societyName = string or boolean
TriggerEvent("LegacyFramework:GetSocietyFounds", societyName, function(data)
    print(json.encode(data)) -- return all data society name/founds/shared
end)

```

# Client Events



```lua
-- on player Logout client
RegisterNetEvent('LegacyFramework:onPlayerLogout')
AddEventHandler('LegacyFramework:onPlayerLogout', function()
    local _source = source
    print('Player In Logout', _source)
end)

-- On Player Spawned Client
AddEventHandler("LegacyFramework:OnPlayerSpawned", function()
    LocalPlayer.state.isLoggedIn = true -- example with statebag
end)

-- On Player Logout Client
AddEventHandler('LegacyFramework:onPlayerLogout', function()
    LocalPlayer.state.isLoggedIn = false -- example with statebag
end)
```

