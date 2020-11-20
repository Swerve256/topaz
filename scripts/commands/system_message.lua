---------------------------------------------------------------------------------------------------
-- func: system_message
-- desc: Sends a SYSTEM_1 to all players
---------------------------------------------------------------------------------------------------

require("scripts/globals/msg");

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!system_message {message}");
end;

function onTrigger(player, msg)
		player:PrintToArea(msg, dsp.msg.channel.SYSTEM_1, dsp.msg.area.SYSTEM, "Banhammer");
end
