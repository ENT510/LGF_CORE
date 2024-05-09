---@diagnostic disable: missing-parameter, undefined-doc-param

local lgfcore = exports["LegacyFramework"]:ReturnFramework() -- Import Framework

-- This is a example of retrive personal data for specific player
RegisterCommand('serverdata', function(source)
    local PlayerData = lgfcore.SvPlayerFunctions.GetPlayerData(source)[1]
    -- Register a data Into a table
    local Data = {
        dob = PlayerData.dob,
        firstName = PlayerData.firstName,
        lastName = PlayerData.lastName,
        height = PlayerData.height,
        charName = PlayerData.charName,
        playerGroup = PlayerData.playerGroup,
        lastcoords = PlayerData.lastcoords,
        is_dead = PlayerData.is_dead,
        playerId = PlayerData.playerId,
        moneyAccounts = PlayerData.moneyAccounts,
        gradeJob = PlayerData.gradeJob,
        skin = PlayerData.skin,
        inventory = PlayerData.inventory,
        sex = PlayerData.sex,
        nameJob = PlayerData.nameJob
    }

    print(json.encode(PlayerData, { indent = true })) -- print all data player

    return Data
end)

RegisterCommand('serverdata2', function(source)
    local individualData = lgfcore.SvPlayerFunctions.GetPlayerData(source)[1]
    -- Print each data individually
    print("dob", individualData.dob)
    print("firstName", individualData.firstName)
    print("lastName", individualData.lastName)
    print("height", individualData.height)
    print("charName", individualData.charName)
    print("playerGroup", individualData.playerGroup)
    print("lastcoords", individualData.lastcoords)
    print("is_dead", individualData.is_dead)
    print("playerId", individualData.playerId)
    print("moneyAccounts", individualData.moneyAccounts)
    print("gradeJob", individualData.gradeJob)
    print("skin", individualData.skin)
    print("inventory", individualData.inventory)
    print("sex", individualData.sex)
    print("nameJob", individualData.nameJob)
    print("id", individualData.id)
    print("lastcoords", individualData.lastcoords)
    print("height", individualData.height)
end)


-- This is when player is in logout example /relog
RegisterServerEvent('LegacyFramework:onPlayerLogout')
AddEventHandler('LegacyFramework:onPlayerLogout', function()
    local _source = source
    print('player in logout', _source)
end)

-- This is when player is spawned by serverside
RegisterNetEvent("LegacyFramework:OnServerPlayerSpawned", function()
    local _source = source
    print('spawned server side', _source)
end)

-- Retrieves data for the specified society.
---@param societyName string|boolean The name of the society to retrieve data or the boolean with society name

-- To fully leverage the society management system, it is essential to integrate the LGF_Society dependency. This dependency provides advanced tools for controlling and managing society data.
-- It is advisable to carefully verify the presence and correct configuration of the job within the "society_found" table in the database. Accurate checks have been implemented to detect the job's existence, so ensuring proper setup is crucial.
-- Before seeking assistance or explanations, it is recommended to ensure full access to all data and proper configuration of the dependency and job within the system.
-- Every detail regarding the usage and configuration of society data is available in the official documentation.

RegisterCommand('societydata', function()
    local societyName = 'police' -- Example society name
    TriggerEvent("LegacyFramework:GetSocietyFounds", societyName, function(data)
        print(json.encode(data)) -- Returns all data related to the specified society, including its name society, funds, and if is shared (true or false).
    end)
end)
