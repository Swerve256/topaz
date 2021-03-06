-----------------------------------
-- Area: Port Windurst
--  NPC: Choyi Totlihpa
-- Type: Standard NPC
-- !pos -58.927 -5.732 132.819 240
-----------------------------------
require("scripts/globals/quests")
require("scripts/globals/utils")
-----------------------------------

function onTrade(player, npc, trade)
end

function onTrigger(player, npc)

    local WildcatWindurst = player:getCharVar("WildcatWindurst")

    if (player:getQuestStatus(WINDURST, tpz.quest.id.windurst.LURE_OF_THE_WILDCAT) == QUEST_ACCEPTED and not utils.mask.getBit(WildcatWindurst, 17)) then
        player:startEvent(622)
    else
        player:startEvent(215)
    end
end

function onEventUpdate(player, csid, option)
end

function onEventFinish(player, csid, option)

    if (csid == 622) then
        player:setCharVar("WildcatWindurst", utils.mask.setBit(player:getCharVar("WildcatWindurst"), 17, true))
    end

end
