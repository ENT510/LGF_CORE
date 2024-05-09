---@diagnostic disable: missing-parameter

local lgfcore = exports["LegacyFramework"]:ReturnFramework() -- Import Framework

RegisterCommand('stato', function()
    -- Retrieve client data using the GetClientData function from LegacyFramework
    local PlayerData = lgfcore.PlayerFunctions.GetClientData()[1]

    -- Print each data individually
    print('Dob:', PlayerData.dob)
    print('FirstName:', PlayerData.firstName)
    print('LastName:', PlayerData.lastName)
    print('Height:', PlayerData.height)
    print('ID:', PlayerData.playerId)
    print('GradeJob:', PlayerData.gradeJob)
    print('Inventory:', PlayerData.inventory)
    print('Skin:', PlayerData.skin)
    print('PlayerGroup:', PlayerData.playerGroup)
    print('Sex:', PlayerData.sex)
    print('MoneyAccounts:', PlayerData.moneyAccounts)
    print('CharName:', PlayerData.charName)
    print('LastCoords:', PlayerData.lastcoords)
    print('NameJob:', PlayerData.nameJob)
end)

RegisterCommand('bag', function()

    -- Access player data stored in StateBag
    local PlayerBag = LocalPlayer.state.playerData[1]

    -- Print each data individually
    print('Dob:', PlayerBag.dob)
    print('FirstName:', PlayerBag.firstName)
    print('LastName:', PlayerBag.lastName)
    print('Height:', PlayerBag.height)
    print('ID:', PlayerBag.playerId)
    print('GradeJob:', PlayerBag.gradeJob)
    print('Inventory:', PlayerBag.inventory)
    print('Skin:', PlayerBag.skin)
    print('PlayerGroup:', PlayerBag.playerGroup)
    print('Sex:', PlayerBag.sex)
    print('MoneyAccounts:', PlayerBag.moneyAccounts)
    print('CharName:', PlayerBag.charName)
    print('LastCoords:', PlayerBag.lastcoords)
    print('NameJob:', PlayerBag.nameJob)
end)

-- This event occurs on the client side when a player logs out.
RegisterNetEvent('LegacyFramework:onPlayerLogout')
AddEventHandler('LegacyFramework:onPlayerLogout', function()
    local _source = source
    print('Player In Logout', _source)

end)

-- This event occurs on the client side when a player is spawned.
-- When a player is spawned, their login status is updated in LocalPlayer.state (example with statebag).
AddEventHandler("LegacyFramework:OnPlayerSpawned", function()
    LocalPlayer.state.Logged = true
end)

-- This event occurs on the client side when a player logs out.
-- When a player logs out, their login status is updated in LocalPlayer.state (example with statebag).
AddEventHandler('LegacyFramework:onPlayerLogout', function()
    LocalPlayer.state.Logged = false
end)
