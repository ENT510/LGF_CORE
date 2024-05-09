
# Server Functions

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
