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
g_inGameMenu.mapSelectionVisit["onClickCallback"] = function () end

-- Disallow entering remotely
g_inGameMenu.mapSelectionEnter:setDisabled(true)
g_inGameMenu.mapSelectionEnter["onClickCallback"] = function () end

Mission00.loadMission00Finished = Utils.appendedFunction(Mission00.loadMission00Finished, function ()
    -- Register the non-tabbing to all vehicles
    g_currentMission.isToggleVehicleAllowed = false
end)
