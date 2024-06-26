[![discord](https://img.shields.io/badge/Join-Legacy%20Scripts-orange?logo=discord&logoColor=white)](https://discord.gg/legacyscripts)
[![discord](https://img.shields.io/badge/Join-LGF%20Core-orange?logo=discord&logoColor=white)](https://discord.gg/J9b32ZNpDu)






> [!CAUTION]
> This marks the inaugural pre-release of LGF CORE, so while you may encounter some issues, rest assured that our support will remain perpetually active to ensure the project functions at its best.




# LGF CORE

LGF CORE is a reliable companion for developers on FiveM, offering simple yet powerful tools for creating unique gaming experiences. With a humble and intuitive approach, this framework makes it easy to work with external dependencies and provides clear documentation to simplify learning and usage.

## Features

- **Essential Utilities:** LegacyFramework provides a set of indispensable functions to manage crucial aspects of the game, such as economy, player groups, and permissions.

- **Ease of Use:** Thanks to detailed and understandable documentation, the framework is accessible even to less experienced developers, allowing them to quickly start creating custom scripts.

- **Flexibility:** With the ability to work with external dependencies, LegacyFramework allows developers to easily integrate additional resources into their projects, expanding functionality and creative possibilities.

[![Documentation](https://img.shields.io/badge/Documentation-LGF_Framework-blue)](https://legacy-script.gitbook.io/lgf-framework)



- [x] IMPLEMENT A NEW FEATURE
- [x] OPTIMIZE RESOURCE LOADING
- [x] DEBUG SCRIPT ERRORS
- [x] QUICK ADAPTATION
- [x] OPTIMIZATION
- [x] FULL COMPATIBLE WITH THE OX LIBRARY


<hr style="border-radius: 50%; margin: 0 25px;">

# SQL TABLE USERS

The LGF CORE Provider will automatically execute the user table in your database. Below you can find it at your convenience



```sql
CREATE DATABASE IF NOT EXISTS `legacyframework` 
USE `legacyframework`;

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charName` longtext DEFAULT NULL,
  `firstName` longtext DEFAULT NULL,
  `lastName` longtext DEFAULT NULL,
  `sex` longtext DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `height` decimal(5,2) DEFAULT NULL,
  `skin` longtext DEFAULT NULL,
  `moneyAccounts` longtext DEFAULT NULL,
  `playerGroup` longtext DEFAULT NULL,
  `inventory` longtext DEFAULT NULL,
  `nameJob` longtext DEFAULT NULL,
  `gradeJob` longtext DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT NULL,
  `license` longtext DEFAULT NULL,
  `lastcoords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`lastcoords`)),
  `status` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


```



# CORE

By invoking this export, you integrate the features of the Legacy Framework into your project, allowing you to take advantage of its various features for server-side player operations, utility functions, vehicle operations, and more.

```lua
LegacyFramework = exports["LegacyFramework"]:ReturnFramework() -- Import Framework
```

## Installation Guide for Legacy Framework

To correctly install and utilize the Legacy Framework in your project, follow these steps:

Import the Framework into Your fxmanifest.lua Resource

Add the following line to your manifest file:

```lua
fx_version 'adamant'
game 'gta5'
lua54 'yes'

author 'ENT510'
version '1.0.0'

shared_scripts{
    '@LegacyFramework/import_framework.lua' -- IMPORT CORE IN YOUR RESOURCE by fxmanifest.lua
}

client_scripts{
    'client.lua'
}

server_scripts{
    'server.lua'
}

```
or you can Initialize the Framework in your main script To use the Legacy Framework in your project, directly using the export function as shown below, or import it as described in the previous step. This example demonstrates direct usage:

```lua
LegacyFramework = exports["LegacyFramework"]:ReturnFramework() -- Import Framework
```


# Shared Functions



```lua
-- Dump a specific Table
LegacyFramework.sharedUtils.DumpTable(...)
-- Example: 
local Table = {
    dato1 = 'ciao',
    dato2 = 'ciao rimasto'
}

print(LegacyFramework.sharedUtils.DumpTable(Table))

-- Using A timeOut
LegacyFramework.sharedUtils.Timeout(options)
-- Example
LegacyFramework.sharedUtils.Timeout({
    Duration = 5,  -- Timeout in Seconds
    Data = function()  -- Function for args
        print("Hi, 5 seconds have passed")
        -- Your Logic function
    end,
})

```


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
-- Remove Player Cash
LegacyFramework.SvPlayerFunctions.RemovePlayerMoneyCash(playerId, amount)
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
-- Return Player Char Loaded
LegacyFramework.PlayerFunctions.PlayerLoaded()
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
LegacyFramework.Utils.Notify(icon, colorIcon, message, title, position, bgColor, duration)
-- Create Advanced Notification with Params
LegacyFramework.Utils.AdvancedNotify({params}) -- same params for LegacyFramework.Utils.Notify but via Table
-- Set healt At Player
LegacyFramework.PlayerFunctions.SetPlayerHealth(health)
-- Set Status
LegacyFramework.PlayerFunctions.SetStatus(status, value)
-- Get Status Player (Thirst / Hunger)
 LegacyFramework.PlayerFunctions.GetStatus()
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

-- Retrieves data for the specified society.
---@param societyName string|boolean 
-- The name of the society to retrieve data or the boolean with society name

TriggerEvent("LegacyFramework:GetSocietyFounds", societyName, function(data)
    print(json.encode(data)) -- return all data society name/founds/shared
end)

```

# Client Events



```lua
-- on player Logout client
RegisterNetEvent('LegacyFramework:onPlayerLogout')
AddEventHandler('LegacyFramework:onPlayerLogout', function()
   -- your logic here
end)

-- On Player Spawned Client
AddEventHandler("LegacyFramework:OnPlayerSpawned", function()
    LocalPlayer.state.isLoggedIn = true -- example with statebag
end)

-- On Player Logout Client
AddEventHandler('LegacyFramework:onPlayerLogout', function()
    LocalPlayer.state.isLoggedIn = false -- example with statebag
end)

-- return Player Loaded
RegisterNetEvent('LegacyFramework:PlayerLoaded')
AddEventHandler('LegacyFramework:PlayerLoaded', function()
    print('Player Loaded')
end)

```


# Server Exports

> [!IMPORTANT]
> LGF_Society required as a dependency to be able to use exports and interact with company systems


```lua
-- Retrieve Society Data By Export
---@param societyName string|boolean 
-- The name of the society to retrieve data or the boolean with society name

exports.LGF_Society:GetSocietyFounds(societyName)


-- Update Society Founds
---@param societyName string|boolean 
---@param additionalFounds number|boolean 
-- (societyName) The name of the society to retrieve data or the boolean with society name (additionalFounds) The amount of money to put into the company

exports.LGF_Society:UpdateSocietyFounds(societyName, additionalFounds)


-- Remove Society Founds
---@param societyName string|boolean 
---@param additionalFounds number|boolean 
-- (societyName) The name of the society to retrieve data or the boolean with society name (additionalFounds) The amount of money to put into the company

exports.LGF_Society:RemoveSocietyFounds(societyName, additionalFounds)
```

