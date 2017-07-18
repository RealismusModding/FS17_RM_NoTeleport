----------------------------------------------------------------------------------------------------
-- MAIN SCRIPT
----------------------------------------------------------------------------------------------------
-- Purpose:  Does all the things
-- Authors:  Rahkiin
--
-- Copyright (c) Realismus Modding, 2017
----------------------------------------------------------------------------------------------------


-- Disallow visiting
g_inGameMenu.mapSelectionVisit:setDisabled(true)

-- Disallow entering remotely
g_inGameMenu.mapSelectionEnter:setDisabled(true)

Mission00.loadMission00Finished = Utils.appendedFunction(Mission00.loadMission00Finished, function ()
    -- Register the non-tabbing to all vehicles
    g_currentMission.isToggleVehicleAllowed = false
end)
