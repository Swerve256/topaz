---------------------------------------------------------------------------------------------------
-- func: ipcheck
-- desc: Returns ip records on all other accounts associated with the given character through its ip address
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!ipcheck <player>");
end;

function onTrigger(player, arg1)
    if (arg1 == nil) then
        error(player, "Invalid player name.");
        return;
    end

    player:PrintToPlayer(GetPlayerIPRecords(arg1))
end