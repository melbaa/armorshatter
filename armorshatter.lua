ARMORSHATTER_Version = "1.1";
DEFAULT_CHAT_FRAME:AddMessage("ARMORSHATTER LOADED", 1, 0.8, 1);

function ARMORSHATTER_OnLoad()
	--this:RegisterEvent("CHAT_MSG_SPELL_SELF_BUFF");
	this:RegisterEvent("CHAT_MSG_SPELL_SELF_DAMAGE");
	this:RegisterEvent("CHAT_MSG_COMBAT_SELF_HITS");
	this:RegisterEvent("CHAT_MSG_COMBAT_SELF_MISSES");
	this:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_SELF_BUFFS");
	this:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_HOSTILEPLAYER_DAMAGE");
	this:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_HOSTILEPLAYER_BUFFS");
	this:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_CREATURE_BUFFS");
	this:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_CREATURE_DAMAGE");
end


function ARMORSHATTER_OnEvent()
    -- if not UnitInRaid("player") then return end--and GetNumPartyMembers()==0 then return end

    --print(event)
    --print(arg1)
	
	if(event == "CHAT_MSG_SPELL_PERIODIC_CREATURE_DAMAGE") then
        if (string.find(arg1, 'Armor Shatter')) then
            local tname=UnitName("target")
			-- SendChatMessage("armor shatter on " .. tname, "SAY");
			SendChatMessage(arg1, "SAY");
        end
    end
end

function ARMORSHATTER_OnUpdate()
end
