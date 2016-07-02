COMBATLOG_FILTERS_TO_DISPLAY = 4;
CHATCONFIG_FILTER_HEIGHT = 16;
GRAY_CHECKED = 1;
CHECKED_NO_SUBTYPES = 2;
UNCHECKED_NO_SUBTYPES = 3;
CHATCONFIG_SELECTED_FILTER = nil;
CHATCONFIG_SELECTED_FILTER_FILTERS = nil;
CHATCONFIG_SELECTED_FILTER_COLORS = nil;
CHATCONFIG_SELECTED_FILTER_SETTINGS = nil;
CHATCONFIG_SELECTED_FILTER_OLD_SETTINGS = nil;
MAX_COMBATLOG_FILTERS = 20;

--Chat options
CHAT_CONFIG_CHAT_RIGHT = {
	[1] = {
		type = "PARTY",
		checked = function () return IsListeningForMessageType("PARTY"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "PARTY"); end;
	},
	[2] = {
		type = "RAID",
		checked = function () return IsListeningForMessageType("RAID"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "RAID"); end;
	},
	[3] = {
		type = "RAID_LEADER",
		checked = function () return IsListeningForMessageType("RAID_LEADER"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "RAID_LEADER"); end;
	},
	[4] = {
		type = "RAID_WARNING",
		checked = function () return IsListeningForMessageType("RAID_WARNING"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "RAID_WARNING"); end;
	},
	[5] = {
		type = "BATTLEGROUND",
		checked = function () return IsListeningForMessageType("BATTLEGROUND"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "BATTLEGROUND"); end;
	},
	[6] = {
		type = "BATTLEGROUND_LEADER",
		checked = function () return IsListeningForMessageType("BATTLEGROUND_LEADER"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "BATTLEGROUND_LEADER"); end;
	}
};

CHAT_CONFIG_CHAT_LEFT = {
	[1] = {
		type = "SAY",
		checked = function () return IsListeningForMessageType("SAY"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "SAY"); end;
	},
	[2] = {
		type = "EMOTE",
		checked = function () return IsListeningForMessageType("EMOTE"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "EMOTE"); end;
	},
	[3] = {
		type = "YELL",
		checked = function () return IsListeningForMessageType("YELL"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "YELL"); end;
	},
	[4] = {
		text = GUILD_CHAT,
		type = "GUILD",
		checked = function () return IsListeningForMessageType("GUILD"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "GUILD"); end;
	},
	[5] = {
		text = OFFICER_CHAT,
		type = "GUILD_OFFICER",
		checked = function () return IsListeningForMessageType("GUILD_OFFICER"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "GUILD_OFFICER"); end;
	},
	[6] = {
		type = "WHISPER",
		checked = function () return IsListeningForMessageType("WHISPER"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "WHISPER"); end;
	}
};

CHAT_CONFIG_CHAT_CREATURE_LEFT = {
	[1] = {
		text = SAY;
		type = "MONSTER_SAY",
		checked = function () return IsListeningForMessageType("MONSTER_SAY"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "MONSTER_SAY"); end;
	},
	[2] = {
		text = EMOTE;
		type = "MONSTER_EMOTE",
		checked = function () return IsListeningForMessageType("MONSTER_EMOTE"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "MONSTER_EMOTE"); end;
	},
	[3] = {
		text = YELL;
		type = "MONSTER_YELL",
		checked = function () return IsListeningForMessageType("MONSTER_YELL"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "MONSTER_YELL"); end;
	},
	[4] = {
		text = WHISPER;
		type = "MONSTER_WHISPER",
		checked = function () return IsListeningForMessageType("MONSTER_WHISPER"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "MONSTER_WHISPER"); end;
	},
	[5] = {
		type = "MONSTER_BOSS_EMOTE",
		checked = function () return IsListeningForMessageType("MONSTER_BOSS_EMOTE"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "MONSTER_BOSS_EMOTE"); end;
	},
	[6] = {
		type = "MONSTER_BOSS_WHISPER",
		checked = function () return IsListeningForMessageType("MONSTER_BOSS_WHISPER"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "MONSTER_BOSS_WHISPER"); end;
	}
};

CHAT_CONFIG_OTHER_COMBAT = {
	[1] = {
		type = "COMBAT_XP_GAIN",
		checked = function () return IsListeningForMessageType("COMBAT_XP_GAIN"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "COMBAT_XP_GAIN"); end;
	},
	[2] = {
		type = "COMBAT_HONOR_GAIN",
		checked = function () return IsListeningForMessageType("COMBAT_HONOR_GAIN"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "COMBAT_HONOR_GAIN"); end;
	},
	[3] = {
		type = "COMBAT_FACTION_CHANGE",
		checked = function () return IsListeningForMessageType("COMBAT_FACTION_CHANGE"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "COMBAT_FACTION_CHANGE"); end;
	},
	[4] = {
		text = SKILLUPS,
		type = "SKILL",
		checked = function () return IsListeningForMessageType("SKILL"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "SKILL"); end;
	},
	[5] = {
		text = ITEM_LOOT,
		type = "LOOT",
		checked = function () return IsListeningForMessageType("LOOT"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "LOOT"); end;
	},
	[6] = {
		text = MONEY_LOOT,
		type = "MONEY",
		checked = function () return IsListeningForMessageType("MONEY"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "MONEY"); end;
	},
	[7] = {
		type = "TRADESKILLS",
		checked = function () return IsListeningForMessageType("TRADESKILLS"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "TRADESKILLS"); end;
	},
	[8] = {
		type = "OPENING",
		checked = function () return IsListeningForMessageType("OPENING"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "OPENING"); end;
	},
	[9] = {
		type = "PET_INFO",
		checked = function () return IsListeningForMessageType("PET_INFO"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "PET_INFO"); end;
	},
	[10] = {
		type = "COMBAT_MISC_INFO",
		checked = function () return IsListeningForMessageType("COMBAT_MISC_INFO"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "COMBAT_MISC_INFO"); end;
	},
};

CHAT_CONFIG_OTHER_PVP = {
	[1] = {
		type = "BG_SYSTEM_HORDE",
		checked = function () return IsListeningForMessageType("BG_HORDE"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "BG_HORDE"); end;
	},
	[2] = {
		type = "BG_SYSTEM_ALLIANCE",
		checked = function () return IsListeningForMessageType("BG_ALLIANCE"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "BG_ALLIANCE"); end;
	},
	[3] = {
		type = "BG_SYSTEM_NEUTRAL",
		checked = function () return IsListeningForMessageType("BG_NEUTRAL"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "BG_NEUTRAL"); end;
	},
}

CHAT_CONFIG_OTHER_SYSTEM = {
	[1] = {
		text = SYSTEM_MESSAGES,
		type = "SYSTEM",
		checked = function () return IsListeningForMessageType("SYSTEM"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "SYSTEM"); end;
	},
	[2] = {
		type = "ERRORS",
		checked = function () return IsListeningForMessageType("ERRORS"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "ERRORS"); end;
	},
	[3] = {
		type = "AFK",
		checked = function () return IsListeningForMessageType("AFK"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "AFK"); end;
	},
	[4] = {
		type = "DND",
		checked = function () return IsListeningForMessageType("DND"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "DND"); end;
	},
	[5] = {
		type = "IGNORED",
		checked = function () return IsListeningForMessageType("IGNORED"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "IGNORED"); end;
	},
	[6] = {
		type = "CHANNEL",
		checked = function () return IsListeningForMessageType("CHANNEL"); end;
		func = function (checked) ToggleChatMessageGroup(checked, "CHANNEL"); end;
	},
}

CHAT_CONFIG_CHANNEL_LIST = {};

-- Combat Options
COMBAT_CONFIG_MESSAGESOURCES_BY = {
	[1] = {
		text = COMBATLOG_FILTER_STRING_ME,
		checked = function () return IsMessageDoneBy(COMBATLOG_FILTER_MINE); end;
		disabled = function () return UsesGUID("SOURCE"); end;
		func = function (checked) ToggleMessageSource(checked, COMBATLOG_FILTER_MINE); end;
		tooltip = FILTER_BY_ME_COMBATLOG_TOOLTIP;
	},
	[2] = {
		text = COMBATLOG_FILTER_STRING_MY_PET,
		checked = function () return IsMessageDoneBy(COMBATLOG_FILTER_MY_PET); end;
		disabled = function () return UsesGUID("SOURCE"); end;
		func = function (checked) ToggleMessageSource(checked, COMBATLOG_FILTER_MY_PET); end;
		tooltip = FILTER_BY_PET_COMBATLOG_TOOLTIP;
	},
	[3] = {
		text = COMBATLOG_FILTER_STRING_FRIENDLY_UNITS,
		checked = function () return IsMessageDoneBy(COMBATLOG_FILTER_FRIENDLY_UNITS); end;
		disabled = function () return UsesGUID("SOURCE"); end;
		func = function (checked) ToggleMessageSource(checked, COMBATLOG_FILTER_FRIENDLY_UNITS); end;
		tooltip = FILTER_BY_FRIENDS_COMBATLOG_TOOLTIP;
	},
	[4] = {
		text = COMBATLOG_FILTER_STRING_HOSTILE_PLAYERS,
		checked = function () return IsMessageDoneBy(COMBATLOG_FILTER_HOSTILE_PLAYERS); end;
		disabled = function () return UsesGUID("SOURCE"); end;
		func = function (checked) ToggleMessageSource(checked, COMBATLOG_FILTER_HOSTILE_PLAYERS); end;
		tooltip = FILTER_BY_HOSTILE_PLAYERS_COMBATLOG_TOOLTIP;
	},
	[5] = {
		text = COMBATLOG_FILTER_STRING_HOSTILE_UNITS,
		checked = function () return IsMessageDoneBy(COMBATLOG_FILTER_HOSTILE_UNITS); end;
		disabled = function () return UsesGUID("SOURCE"); end;
		func = function (checked) ToggleMessageSource(checked, COMBATLOG_FILTER_HOSTILE_UNITS); end;
		tooltip = FILTER_BY_ENEMIES_COMBATLOG_TOOLTIP;
	},
	[6] = {
		text = COMBATLOG_FILTER_STRING_NEUTRAL_UNITS,
		checked = function () return IsMessageDoneBy(COMBATLOG_FILTER_NEUTRAL_UNITS); end;
		disabled = function () return UsesGUID("SOURCE"); end;
		func = function (checked) ToggleMessageSource(checked, COMBATLOG_FILTER_NEUTRAL_UNITS); end;
		tooltip = FILTER_BY_NEUTRAL_COMBATLOG_TOOLTIP;
	},
	[7] = {
		text = COMBATLOG_FILTER_STRING_UNKNOWN_UNITS,
		checked = function () return IsMessageDoneBy(COMBATLOG_FILTER_UNKNOWN_UNITS); end;
		disabled = function () return UsesGUID("SOURCE"); end;
		func = function (checked) ToggleMessageSource(checked, COMBATLOG_FILTER_UNKNOWN_UNITS); end;
		tooltip = FILTER_BY_UNKNOWN_COMBATLOG_TOOLTIP;
	},
}

COMBAT_CONFIG_MESSAGESOURCES_TO = {
	[1] = {
		text = COMBATLOG_FILTER_STRING_ME,
		checked = function () return IsMessageDoneTo(COMBATLOG_FILTER_MINE); end;
		disabled = function () return UsesGUID("DEST"); end;
		func = function (checked) ToggleMessageDest(checked, COMBATLOG_FILTER_MINE); end;
		tooltip = FILTER_TO_ME_COMBATLOG_TOOLTIP;
	},
	[2] = {
		text = COMBATLOG_FILTER_STRING_MY_PET,
		checked = function () return IsMessageDoneTo(COMBATLOG_FILTER_MY_PET); end;
		disabled = function () return UsesGUID("DEST"); end;
		func = function (checked) ToggleMessageDest(checked, COMBATLOG_FILTER_MY_PET); end;
		tooltip = FILTER_TO_PET_COMBATLOG_TOOLTIP;
	},
	[3] = {
		text = COMBATLOG_FILTER_STRING_FRIENDLY_UNITS,
		checked = function () return IsMessageDoneTo(COMBATLOG_FILTER_FRIENDLY_UNITS); end;
		disabled = function () return UsesGUID("DEST"); end;
		func = function (checked) ToggleMessageDest(checked, COMBATLOG_FILTER_FRIENDLY_UNITS); end;
		tooltip = FILTER_TO_FRIENDS_COMBATLOG_TOOLTIP;
	},
	[4] = {
		text = COMBATLOG_FILTER_STRING_HOSTILE_PLAYERS,
		checked = function () return IsMessageDoneTo(COMBATLOG_FILTER_HOSTILE_PLAYERS); end;
		disabled = function () return UsesGUID("DEST"); end;
		func = function (checked) ToggleMessageDest(checked, COMBATLOG_FILTER_HOSTILE_PLAYERS); end;
		tooltip = FILTER_TO_HOSTILE_PLAYERS_COMBATLOG_TOOLTIP;
	},
	[5] = {
		text = COMBATLOG_FILTER_STRING_HOSTILE_UNITS,
		checked = function () return IsMessageDoneTo(COMBATLOG_FILTER_HOSTILE_UNITS); end;
		disabled = function () return UsesGUID("DEST"); end;
		func = function (checked) ToggleMessageDest(checked, COMBATLOG_FILTER_HOSTILE_UNITS); end;
		tooltip = FILTER_TO_HOSTILE_COMBATLOG_TOOLTIP;
	},
	[6] = {
		text = COMBATLOG_FILTER_STRING_NEUTRAL_UNITS,
		checked = function () return IsMessageDoneTo(COMBATLOG_FILTER_NEUTRAL_UNITS); end;
		disabled = function () return UsesGUID("DEST"); end;
		func = function (checked) ToggleMessageDest(checked, COMBATLOG_FILTER_NEUTRAL_UNITS); end;
		tooltip = FILTER_TO_NEUTRAL_COMBATLOG_TOOLTIP;
	},
	[7] = {
		text = COMBATLOG_FILTER_STRING_UNKNOWN_UNITS,
		checked = function () return IsMessageDoneTo(COMBATLOG_FILTER_UNKNOWN_UNITS); end;
		disabled = function () return UsesGUID("DEST"); end;
		func = function (checked) ToggleMessageDest(checked, COMBATLOG_FILTER_UNKNOWN_UNITS); end;
		tooltip = FILTER_TO_UNKNOWN_COMBATLOG_TOOLTIP;
	},
}

COMBAT_CONFIG_MESSAGETYPES_LEFT = {
	[1] = {
		text = MELEE,
		checked = function () return HasMessageTypeGroup(COMBAT_CONFIG_MESSAGETYPES_LEFT, 1) end;
		func = function (checked) ToggleMessageTypeGroup(checked, CombatConfigMessageTypesLeft, 1) end;
		tooltip = MELEE_COMBATLOG_TOOLTIP,
		subTypes = {
			[1] = {
				text = DAMAGE,
				type = "SWING_DAMAGE",
				checked = function () return HasMessageType("SWING_DAMAGE"); end;
				func = function (checked) ToggleMessageType(checked, "SWING_DAMAGE") end;
				tooltip = SWING_DAMAGE_COMBATLOG_TOOLTIP;
			},
			[2] = {
				text = MISSES,
				type = "SWING_MISSED",
				checked = function () return HasMessageType("SWING_MISSED"); end;
				func = function (checked) ToggleMessageType(checked, "SWING_MISSED"); end;
				tooltip = SWING_MISSED_COMBATLOG_TOOLTIP;
			},
		}
	},
	[2] = {
		text = RANGED,
		checked = function () return HasMessageTypeGroup(COMBAT_CONFIG_MESSAGETYPES_LEFT, 2) end;
		func = function (checked) ToggleMessageTypeGroup(checked, CombatConfigMessageTypesLeft, 2) end;
		tooltip = RANGED_COMBATLOG_TOOLTIP,
		subTypes = {
			[1] = {
				text = DAMAGE,
				type = "RANGE_DAMAGE",
				checked = function () return HasMessageType("RANGE_DAMAGE"); end;
				func = function (checked) ToggleMessageType(checked, "RANGE_DAMAGE"); end;
				tooltip = RANGE_DAMAGE_COMBATLOG_TOOLTIP;
			},
			[2] = {
				text = MISSES,
				type = "RANGE_MISSED",
				checked = function () return HasMessageType("RANGE_MISSED"); end;
				func = function (checked) ToggleMessageType(checked, "RANGE_MISSED"); end;
				tooltip = RANGE_MISSED_COMBATLOG_TOOLTIP;
			},
		}
	},
	[3] = {
		text = AURAS,
		checked = function () return HasMessageTypeGroup(COMBAT_CONFIG_MESSAGETYPES_LEFT, 3) end;
		func = function (checked) ToggleMessageTypeGroup(checked, CombatConfigMessageTypesLeft, 3) end;
		tooltip = AURAS_COMBATLOG_TOOLTIP,
		subTypes = {
			[1] = {
				text = BENEFICIAL,
				type = {"SPELL_AURA_APPLIED", "SPELL_AURA_APPLIED_DOSE", "SPELL_AURA_APPLIED_REMOVED", "SPELL_AURA_APPLIED_REMOVED_DOSE"};
				checked = function () return not CHATCONFIG_SELECTED_FILTER_SETTINGS.hideBuffs end;
				func = function (checked) 
					if ( checked ) then
						CHATCONFIG_SELECTED_FILTER_SETTINGS.hideBuffs = false;
						ToggleMessageType(checked, "SPELL_AURA_APPLIED", "SPELL_AURA_APPLIED_DOSE", "SPELL_AURA_APPLIED_REMOVED", "SPELL_AURA_APPLIED_REMOVED_DOSE");
					else
						CHATCONFIG_SELECTED_FILTER_SETTINGS.hideBuffs = true;
						-- Only stop listening for the messages if hideDebuffs is also true
						if ( CHATCONFIG_SELECTED_FILTER_SETTINGS.hideDebuffs ) then
							ToggleMessageType(checked, "SPELL_AURA_APPLIED", "SPELL_AURA_APPLIED_DOSE", "SPELL_AURA_APPLIED_REMOVED", "SPELL_AURA_APPLIED_REMOVED_DOSE");
						end
					end
				end;
				tooltip = BENEFICIAL_AURA_COMBATLOG_TOOLTIP;
			},
			[2] = {
				text = HOSTILE,
				type = {"SPELL_AURA_APPLIED", "SPELL_AURA_APPLIED_DOSE", "SPELL_AURA_APPLIED_REMOVED", "SPELL_AURA_APPLIED_REMOVED_DOSE"};
				checked = function () return not CHATCONFIG_SELECTED_FILTER_SETTINGS.hideDebuffs end;
				func = function (checked) 
					if ( checked ) then
						CHATCONFIG_SELECTED_FILTER_SETTINGS.hideDebuffs = false;
						ToggleMessageType(checked, "SPELL_AURA_APPLIED", "SPELL_AURA_APPLIED_DOSE", "SPELL_AURA_APPLIED_REMOVED", "SPELL_AURA_APPLIED_REMOVED_DOSE");
					else
						CHATCONFIG_SELECTED_FILTER_SETTINGS.hideDebuffs = true;
						-- Only stop listening for the messages if hideDebuffs is also true
						if ( CHATCONFIG_SELECTED_FILTER_SETTINGS.hideBuffs ) then
							ToggleMessageType(checked, "SPELL_AURA_APPLIED", "SPELL_AURA_APPLIED_DOSE", "SPELL_AURA_APPLIED_REMOVED", "SPELL_AURA_APPLIED_REMOVED_DOSE");
						end
					end
				end;
				tooltip = HARMFUL_AURA_COMBATLOG_TOOLTIP;
			},
			[3] = {
				text = DISPELS,
				type = {"SPELL_DISPELLED_AURA","SPELL_STOLEN_AURA", "SPELL_DISPEL_FAILED"};
				checked = function () return HasMessageType("SPELL_DISPELLED_AURA", "SPELL_STOLEN_AURA", "SPELL_DISPEL_FAILED"); end;
				func = function (checked) ToggleMessageType(checked, "SPELL_DISPELLED_AURA", "SPELL_STOLEN_AURA", "SPELL_DISPEL_FAILED"); end;
				tooltip = DISPEL_AURA_COMBATLOG_TOOLTIP;
			},
			[4] = {
				text = ENCHANTS,
				type = {"ENCHANT_APPLIED", "ENCHANT_REMOVED"};
				checked = function () return HasMessageType("ENCHANT_APPLIED", "ENCHANT_REMOVED"); end;
				func = function (checked) ToggleMessageType(checked, "ENCHANT_APPLIED", "ENCHANT_REMOVED"); end;
				tooltip = ENCHANT_AURA_COMBATLOG_TOOLTIP;
			},
		}
	},
	[4] = {
		text = PERIODIC,
		checked = function () return HasMessageTypeGroup(COMBAT_CONFIG_MESSAGETYPES_LEFT, 4) end;
		func = function (checked) ToggleMessageTypeGroup(checked, CombatConfigMessageTypesLeft, 4) end;
		tooltip = SPELL_PERIODIC_COMBATLOG_TOOLTIP,
		subTypes = {
			[1] = {
				text = DAMAGE,
				type = "SPELL_PERIODIC_DAMAGE",
				checked = function () return HasMessageType("SPELL_PERIODIC_DAMAGE"); end;
				func = function (checked) ToggleMessageType(checked, "SPELL_PERIODIC_DAMAGE"); end;
				tooltip = SPELL_PERIODIC_DAMAGE_COMBATLOG_TOOLTIP,
			},
			[2] = {
				text = MISSES,
				type = "SPELL_PERIODIC_MISSED",
				checked = function () return HasMessageType("SPELL_PERIODIC_MISSED"); end;
				func = function (checked) ToggleMessageType(checked, "SPELL_PERIODIC_MISSED"); end;
				tooltip = SPELL_PERIODIC_MISSED_COMBATLOG_TOOLTIP,
			},
			[3] = {
				text = HEALS,
				type = "SPELL_PERIODIC_HEAL",
				checked = function () return HasMessageType("SPELL_PERIODIC_HEAL"); end;
				func = function (checked) ToggleMessageType(checked, "SPELL_PERIODIC_HEAL"); end;
				tooltip = SPELL_PERIODIC_HEAL_COMBATLOG_TOOLTIP,
			},
			[4] = {
				text = OTHER,
				type = {"SPELL_PERIODIC_ENERGIZE", "SPELL_PERIODIC_DRAIN","SPELL_PERIODIC_LEECH"};
				checked = function () return HasMessageType("SPELL_PERIODIC_ENERGIZE", "SPELL_PERIODIC_DRAIN", "SPELL_PERIODIC_LEECH"); end;
				func = function (checked) ToggleMessageType(checked, "SPELL_PERIODIC_ENERGIZE", "SPELL_PERIODIC_DRAIN", "SPELL_PERIODIC_LEECH"); end;
				tooltip = SPELL_PERIODIC_OTHER_COMBATLOG_TOOLTIP,
			},
		}
	},
	
};
COMBAT_CONFIG_MESSAGETYPES_RIGHT = {
	[1] = {
		text = SPELLS,
		checked = function () return HasMessageTypeGroup(COMBAT_CONFIG_MESSAGETYPES_RIGHT, 1) end;
		func = function (checked) ToggleMessageTypeGroup(checked, CombatConfigMessageTypesRight, 1) end;
		tooltip = SPELLS_COMBATLOG_TOOLTIP,
		subTypes = {
			[1] = {
				text = DAMAGE,
				type = "SPELL_DAMAGE",
				checked = function () return HasMessageType("SPELL_DAMAGE"); end;
				func = function (checked) ToggleMessageType(checked, "SPELL_DAMAGE"); end;
				tooltip = SPELL_DAMAGE_COMBATLOG_TOOLTIP,
			},
			[2] = {
				text = MISSES,
				type = "SPELL_MISSED",
				checked = function () return HasMessageType("SPELL_MISSED"); end;
				func = function (checked) ToggleMessageType(checked, "SPELL_MISSED"); end;
				tooltip = SPELL_MISSED_COMBATLOG_TOOLTIP,
			},
			[3] = {
				text = HEALS,
				type = "SPELL_HEAL",
				checked = function () return HasMessageType("SPELL_HEAL"); end;
				func = function (checked) ToggleMessageType(checked, "SPELL_HEAL"); end;
				tooltip = SPELL_HEAL_COMBATLOG_TOOLTIP,
			},
			[4] = {
				text = POWER_GAINS,
				type = "SPELL_ENERGIZE",
				checked = function () return HasMessageType("SPELL_ENERGIZE"); end;
				func = function (checked) ToggleMessageType(checked, "SPELL_ENERGIZE"); end;
				tooltip = POWER_GAINS_COMBATLOG_TOOLTIP,
			},
			[5] = {
				text = DRAINS,
				type = {"SPELL_DRAIN", "SPELL_LEECH"};
				checked = function () return HasMessageType("SPELL_ENERGIZE"); end;
				func = function (checked) ToggleMessageType(checked, "SPELL_ENERGIZE"); end;
				tooltip = SPELL_DRAIN_COMBATLOG_TOOLTIP,
			},
			[5] = {
				text = INTERRUPTS,
				type = {"SPELL_INTERRUPT"};
				checked = function () return HasMessageType("SPELL_INTERRUPT"); end;
				func = function (checked) ToggleMessageType(checked, "SPELL_INTERRUPT"); end;
				tooltip = SPELL_INTERRUPT_COMBATLOG_TOOLTIP,
			},
			[5] = {
				text = SPECIAL,
				type = {"SPELL_INSTAKILL"};
				checked = function () return HasMessageType("SPELL_INSTAKILL"); end;
				func = function (checked) ToggleMessageType(checked, "SPELL_INSTAKILL"); end;
				tooltip = SPELL_INSTAKILL_COMBATLOG_TOOLTIP,
			},
			[6] = {
				text = EXTRA_ATTACKS,
				type = {"SPELL_EXTRA_ATTACKS"};
				checked = function () return HasMessageType("SPELL_EXTRA_ATTACKS"); end;
				func = function (checked) ToggleMessageType(checked, "SPELL_EXTRA_ATTACKS"); end;
				tooltip = SPELL_EXTRA_ATTACKS_COMBATLOG_TOOLTIP,
			},
		}
	},
	[2] = {
		text = SPELL_CASTING,
		checked = function () return HasMessageTypeGroup(COMBAT_CONFIG_MESSAGETYPES_RIGHT, 2) end;
		func = function (checked) ToggleMessageTypeGroup(checked, CombatConfigMessageTypesRight, 2) end;
		tooltip = SPELL_CASTING_COMBATLOG_TOOLTIP,
		subTypes = {
			[1] = {
				text = START,
				type = "SPELL_CAST_START",
				checked = function () return HasMessageType("SPELL_CAST_START"); end;
				func = function (checked) ToggleMessageType(checked, "SPELL_CAST_START"); end;
				tooltip = SPELL_CAST_START_COMBATLOG_TOOLTIP,
			},
			[2] = {
				text = SUCCESS,
				type = "SPELL_CAST_SUCCESS",
				checked = function () return HasMessageType("SPELL_CAST_SUCCESS"); end;
				func = function (checked) ToggleMessageType(checked, "SPELL_CAST_SUCCESS"); end;
				tooltip = SPELL_CAST_SUCCESS_COMBATLOG_TOOLTIP,
			},
			[3] = {
				text = FAILURES,
				type = "SPELL_CAST_FAILED",
				checked = function () return HasMessageType("SPELL_CAST_FAILED"); end;
				func = function (checked) ToggleMessageType(checked, "SPELL_CAST_FAILED"); end;
				tooltip = SPELL_CAST_FAILED_COMBATLOG_TOOLTIP,
			},
		}
	},
};
COMBAT_CONFIG_MESSAGETYPES_MISC = {
	[1] = {
		text = DAMAGE_SHIELD,
		checked = function () return HasMessageType("DAMAGE_SHIELD"); end;
		func = function (checked) ToggleMessageType(checked, "DAMAGE_SHIELD"); end;
		tooltip = DAMAGE_SHIELD_COMBATLOG_TOOLTIP,
	},
	[2] = {
		text = ENVIRONMENTAL_DAMAGE,
		checked = function () return HasMessageType("ENVIRONMENTAL_DAMAGE"); end;
		func = function (checked) ToggleMessageType(checked, "ENVIRONMENTAL_DAMAGE"); end;
		tooltip = ENVIRONMENTAL_DAMAGE_COMBATLOG_TOOLTIP,
	},
	[3] = {
		text = KILLS,
		checked = function () return HasMessageType("PARTY_KILL"); end;
		func = function (checked) ToggleMessageType(checked, "PARTY_KILL"); end;
		tooltip = KILLS_COMBATLOG_TOOLTIP,
	},
	[4] = {
		text = DEATHS,
		type = {"UNIT_DIED", "UNIT_DESTROYED"};
		checked = function () return HasMessageType("UNIT_DIED"); end;
		func = function (checked) ToggleMessageType(checked, "UNIT_DIED"); end;
		tooltip = DEATHS_COMBATLOG_TOOLTIP,
	},
};
COMBAT_CONFIG_UNIT_COLORS = {
	[1] = {
		text = COMBATLOG_FILTER_STRING_ME,
		type = "COMBATLOG_FILTER_MINE",
	},
	[2] = {
		text = COMBATLOG_FILTER_STRING_MY_PET,
		type = "COMBATLOG_FILTER_MY_PET",
	},
	[3] = {
		text = COMBATLOG_FILTER_STRING_FRIENDLY_UNITS,
		type = "COMBATLOG_FILTER_FRIENDLY_UNITS",
	},
	[4] = {
		text = COMBATLOG_FILTER_STRING_HOSTILE_UNITS,
		type = "COMBATLOG_FILTER_HOSTILE_UNITS",
	},
	[5] = {
		text = COMBATLOG_FILTER_STRING_HOSTILE_PLAYERS,
		type = "COMBATLOG_FILTER_HOSTILE_PLAYERS",
	},
	[6] = {
		text = COMBATLOG_FILTER_STRING_NEUTRAL_UNITS,
		type = "COMBATLOG_FILTER_NEUTRAL_UNITS",
	},
	[7] = {
		text = COMBATLOG_FILTER_STRING_UNKNOWN_UNITS,
		type = "COMBATLOG_FILTER_UNKNOWN_UNITS",
	},
}

function ChatConfigFrame_OnLoad()
	this:RegisterEvent("PLAYER_ENTERING_WORLD");
end

function ChatConfigFrame_OnEvent(event)
	if ( event == "PLAYER_ENTERING_WORLD" ) then
		-- This code should be removed after 2.4.2
		if ( Blizzard_CombatLog_Filter_Version == 4 ) then
			Blizzard_CombatLog_Filter_Compatibility(4, 4.1);
			Blizzard_CombatLog_Filter_Version = 4.1;
		elseif ( COMBATLOG_FILTER_VERSION and COMBATLOG_FILTER_VERSION > Blizzard_CombatLog_Filter_Version ) then
			CombatConfig_SetCombatFiltersToDefault();
			Blizzard_CombatLog_Filter_Version = COMBATLOG_FILTER_VERSION;
		end
		
		-- Chat Settings
		ChatConfig_CreateCheckboxes(ChatConfigChatSettingsLeft, CHAT_CONFIG_CHAT_LEFT, "ChatConfigCheckBoxWithSwatchTemplate", PLAYER_MESSAGES);
		ChatConfig_CreateCheckboxes(ChatConfigChatSettingsRight, CHAT_CONFIG_CHAT_RIGHT, "ChatConfigCheckBoxWithSwatchTemplate");
		ChatConfig_CreateCheckboxes(ChatConfigChatSettingsCreatureLeft, CHAT_CONFIG_CHAT_CREATURE_LEFT, "ChatConfigCheckBoxWithSwatchTemplate", CREATURE_MESSAGES);
		ChatConfig_CreateCheckboxes(ChatConfigOtherSettingsCombat, CHAT_CONFIG_OTHER_COMBAT, "ChatConfigCheckBoxWithSwatchTemplate", COMBAT);
		ChatConfig_CreateCheckboxes(ChatConfigOtherSettingsPVP, CHAT_CONFIG_OTHER_PVP, "ChatConfigCheckBoxWithSwatchTemplate", PVP);
		ChatConfig_CreateCheckboxes(ChatConfigOtherSettingsSystem, CHAT_CONFIG_OTHER_SYSTEM, "ChatConfigCheckBoxWithSwatchTemplate", OTHER);

		-- CombatLog Settings
		ChatConfig_CreateCheckboxes(CombatConfigMessageSourcesDoneBy, COMBAT_CONFIG_MESSAGESOURCES_BY, "ChatConfigCheckBoxTemplate", DONE_BY);
		ChatConfig_CreateCheckboxes(CombatConfigMessageSourcesDoneTo, COMBAT_CONFIG_MESSAGESOURCES_TO, "ChatConfigCheckBoxTemplate", DONE_TO);
		ChatConfig_CreateTieredCheckboxes(CombatConfigMessageTypesLeft, COMBAT_CONFIG_MESSAGETYPES_LEFT, "ChatConfigCheckButtonTemplate", "ChatConfigSmallCheckButtonTemplate");
		ChatConfig_CreateTieredCheckboxes(CombatConfigMessageTypesRight, COMBAT_CONFIG_MESSAGETYPES_RIGHT, "ChatConfigCheckButtonTemplate", "ChatConfigSmallCheckButtonTemplate");
		ChatConfig_CreateTieredCheckboxes(CombatConfigMessageTypesMisc, COMBAT_CONFIG_MESSAGETYPES_MISC, "ChatConfigSmallCheckButtonTemplate", "ChatConfigSmallCheckButtonTemplate");
		ChatConfig_CreateColorSwatches(CombatConfigColorsUnitColors, COMBAT_CONFIG_UNIT_COLORS, "ChatConfigSwatchTemplate", UNIT_COLORS);

		-- Default selections
		ChatConfigCategory_OnClick(ChatConfigCategoryFrameButton2);
		ChatConfig_UpdateCombatTabs(1);
	end
end

function ChatConfig_CreateCheckboxes(frame, checkBoxTable, checkBoxTemplate, title)
	local checkBoxNameString = frame:GetName().."CheckBox";
	local checkBoxName, checkBox, check;
	local width, height;
	local padding = 8;
	local text;
	frame.checkBoxTable = checkBoxTable;
	if ( title ) then
		getglobal(frame:GetName().."Title"):SetText(title);
	end
	for index, value in ipairs(checkBoxTable) do
		--If no checkbox then create it
		checkBoxName = checkBoxNameString..index;
		checkBox = getglobal(checkBoxName);
		if ( not checkBox ) then
			checkBox = CreateFrame("Frame", checkBoxName, frame, checkBoxTemplate);
		end
		if ( not width ) then
			width = checkBox:GetWidth();
			height = checkBox:GetHeight();
		end
		if ( index > 1 ) then
			checkBox:SetPoint("TOPLEFT", checkBoxNameString..(index-1), "BOTTOMLEFT", 0, 0);
		else
			checkBox:SetPoint("TOPLEFT", frame, "TOPLEFT", 4, -4);
		end
		if ( value.text ) then
			text = value.text;
		else
			text = getglobal(value.type);
		end
		getglobal(checkBoxName.."CheckText"):SetText(text);
		check = getglobal(checkBoxName.."Check");
		check.func = value.func;
		check:SetID(index);
		check.tooltip = value.tooltip;
	end
	--Set Parent frame dimensions
	if ( #checkBoxTable > 0 ) then
		frame:SetWidth(width+padding);
		frame:SetHeight(#checkBoxTable*height+padding);
	end
end

function ChatConfig_CreateTieredCheckboxes(frame, checkBoxTable, checkBoxTemplate, subCheckBoxTemplate, columns, spacing)
	local checkBoxNameString = frame:GetName().."CheckBox";
	local checkBoxName, checkBox, subCheckBoxName, subCheckBox, subCheckBoxNameString;
	local width, height;
	local padding = 8;
	local count = 0;
	local text, subText;
	local yOffset;
	local numColumns = 2;
	local columnIndex = 1;
	local itemsPerColumn;
	if ( columns ) then
		itemsPerColumn = ceil(#checkBoxTable/columns);
	end
	frame.checkBoxTable = checkBoxTable;
	for index, value in ipairs(checkBoxTable) do
		--If no checkbox then create it
		checkBoxName = checkBoxNameString..index;
		if ( not getglobal(checkBoxName) ) then
			checkBox = CreateFrame("CheckButton", checkBoxName, frame, checkBoxTemplate);
			if ( index > 1 ) then
				if ( columns ) then
					if ( mod(index, columns) == 1 ) then
						checkBox:SetPoint("TOPLEFT", checkBoxNameString..(index-columns), "BOTTOMLEFT", 0, yOffset);
						count = count+1;
					else
						checkBox:SetPoint("TOPLEFT", checkBoxNameString..(index-1), "TOPRIGHT", spacing, 0);
					end
				else
					checkBox:SetPoint("TOPLEFT", checkBoxNameString..(index-1), "BOTTOMLEFT", 0, yOffset);
					count = count+1;
				end
			else
				checkBox:SetPoint("TOPLEFT", frame, "TOPLEFT", 4, -4);
				count = count+1;
			end
			if ( value.text ) then
				text = value.text;
			else
				text = getglobal(value.type);
			end
			getglobal(checkBoxName.."Text"):SetText(text);
			if ( value.subTypes ) then
				subCheckBoxNameString = checkBoxName.."_"; 
				for k, v in ipairs(value.subTypes) do
					subCheckBoxName = subCheckBoxNameString..k;
					if ( not getglobal(subCheckBoxName) ) then
						subCheckBox = CreateFrame("CheckButton", subCheckBoxName, checkBox, subCheckBoxTemplate);
					end
					if ( k > 1 ) then
						if ( mod(k, numColumns) == 0 ) then
							subCheckBox:SetPoint("LEFT", subCheckBoxNameString..(k-1), "RIGHT", 60, 0);	
						else
							subCheckBox:SetPoint("TOPLEFT", subCheckBoxNameString..(k-2), "BOTTOMLEFT", 0, 2);
						end
					else
						subCheckBox:SetPoint("TOPLEFT", checkBox, "BOTTOMLEFT", 15, 2);
					end
					subCheckBox.func = v.func;
					subCheckBox.tooltip = v.tooltip;
					if ( v.text ) then
						subText = v.text;
					else
						subText = getglobal(v.type);
					end
					getglobal(subCheckBoxName.."Text"):SetText(subText);
					count = count+0.6;
				end
				yOffset = -(22*ceil(#value.subTypes/numColumns) + 16);
			else
				yOffset = 0;
			end
			checkBox.func = value.func;
			checkBox.tooltip = value.tooltip;
			if ( not width ) then
				width = checkBox:GetWidth();
				height = checkBox:GetHeight();
			end
		end
	end
	--Set Parent frame dimensions
	if ( count > 0 ) then
		frame:SetWidth(width+padding);
		frame:SetHeight(count*height+padding);
	end
end

function ChatConfig_CreateColorSwatches(frame, swatchTable, swatchTemplate, title)
	local nameString = frame:GetName().."Swatch";
	local swatchName, swatch;
	local width, height;
	local padding = 8;
	local count = 0;
	local text;
	frame.swatchTable = swatchTable;
	if ( title ) then
		getglobal(frame:GetName().."Title"):SetText(title);
	end
	for index, value in ipairs(swatchTable) do
		--If no checkbox then create it
		swatchName = nameString..index;
		if ( not getglobal(swatchName) ) then
			swatch = CreateFrame("Frame", swatchName, frame, swatchTemplate);
			if ( not width ) then
				width = swatch:GetWidth();
				height = swatch:GetHeight();
			end
			if ( index > 1 ) then
				swatch:SetPoint("TOPLEFT", nameString..(index-1), "BOTTOMLEFT", 0, 0);
			else
				swatch:SetPoint("TOPLEFT", frame, "TOPLEFT", 4, -4);
			end
			if ( value.text ) then
				text = value.text;
			else
				text = getglobal(value.type);
			end
			getglobal(swatchName.."Text"):SetText(text);
			count = count+1;
		end
	end
	--Set Parent frame dimensions
	if ( count > 0 ) then
		frame:SetWidth(width+padding);
		frame:SetHeight(count*height+padding);
	end
end

function ChatConfig_UpdateCheckboxes(frame)
	-- List of message types in current chat frame
	if ( not FCF_GetCurrentChatFrame() ) then
		return;
	end
	local checkBoxTable = frame.checkBoxTable;
	local checkBoxNameString = frame:GetName().."CheckBox";
	local checkBoxName, checkBox, baseName, colorSwatch;
	for index, value in ipairs(checkBoxTable) do
		baseName = checkBoxNameString..index;
		checkBox = getglobal(baseName.."Check");
		if ( checkBox ) then
			if ( type(value.checked) == "function" ) then
				checkBox:SetChecked(value.checked());
			else
				checkBox:SetChecked(value.checked);	
			end
			if ( type(value.disabled) == "function" ) then
				if( value.disabled() ) then
					OptionsFrame_DisableCheckBox(checkBox);
				else
					OptionsFrame_EnableCheckBox(checkBox, nil, nil, 1);
				end
			else
				if ( value.disabled ) then
					OptionsFrame_DisableCheckBox(checkBox);
				else
					OptionsFrame_EnableCheckBox(checkBox, nil, nil, 1);
				end
			end
			colorSwatch = getglobal(baseName.."ColorSwatch");
			if ( colorSwatch ) then
				getglobal(baseName.."ColorSwatchNormalTexture"):SetVertexColor(GetMessageTypeColor(value.type));
				colorSwatch.type = value.type;
			end
		end
	end
	-- Hide remaining checkboxes
	local count = #checkBoxTable+1;
	repeat
		checkBox = getglobal(checkBoxNameString..count);
		if ( checkBox ) then
			checkBox:Hide();
		end
		count = count+1;
	until not checkBox;
end

function ChatConfig_UpdateSwatches(frame)
	-- List of message types in current chat frame
	if ( not FCF_GetCurrentChatFrame() ) then
		return;
	end
	local table = frame.swatchTable;
	local nameString = frame:GetName().."Swatch";
	local checkBoxName, checkBox, baseName, colorSwatch;
	for index, value in ipairs(table) do
		baseName = nameString..index;
		swatch = getglobal(baseName.."ColorSwatch");
		if ( swatch ) then
			getglobal(baseName.."ColorSwatchNormalTexture"):SetVertexColor(GetChatUnitColor(value.type));
			swatch.type = value.type;
		end
	end
end

function ChatConfig_UpdateTieredCheckboxFrame(frame)
	-- List of message types in current chat frame
	if ( not FCF_GetCurrentChatFrame() ) then
		return;
	end
	for i=1, #frame.checkBoxTable do
		ChatConfig_UpdateTieredCheckboxes(frame, i);
	end
end

function ChatConfig_UpdateTieredCheckboxes(frame, index)
	local group = frame.checkBoxTable[index];
	local groupChecked;
	local baseName = frame:GetName().."CheckBox"..index;
	local checkBox = getglobal(baseName);
	if ( checkBox ) then
		groupChecked = group.checked;
		if ( type(groupChecked) == "function" ) then
			local checked = groupChecked();
			checkBox:SetChecked(checked);
			--Set checked so we can use it later
			groupChecked = checked;
		else
			checkBox:SetChecked(groupChecked);	
		end
		if ( type(group.disabled) == "function" ) then
			if( group.disabled() ) then
				checkBox:Disable();
			else
				checkBox:Enable();
			end
		else
			if ( group.disabled ) then
				checkBox:Disable();
			else
				checkBox:Enable();
			end
		end
	end
	local subCheckBox;
	if ( group.subTypes ) then
		for k, v in ipairs(group.subTypes) do
			subCheckBox = getglobal(baseName.."_"..k);
			if ( type(v.checked) == "function" ) then
				subCheckBox:SetChecked(v.checked());
			else
				subCheckBox:SetChecked(v.checked);	
			end
			if ( type(v.disabled) == "function" ) then
				if( v.disabled() ) then
					subCheckBox:Disable();
				else
					subCheckBox:Enable();
				end
			else
				if ( v.disabled ) then
					subCheckBox:Disable();
				else
					subCheckBox:Enable();
				end
			end
			
			if ( groupChecked ) then
				OptionsFrame_EnableCheckBox(subCheckBox, nil, nil, 1);
			else
				OptionsFrame_DisableCheckBox(subCheckBox);
			end
		end
	end
end

function CombatConfig_Colorize_Update()
	CombatConfigColorsColorizeUnitNameCheck:SetChecked(CHATCONFIG_SELECTED_FILTER_SETTINGS.unitColoring);
	
	-- Spell Names
	CombatConfigColorsColorizeSpellNamesCheck:SetChecked(CHATCONFIG_SELECTED_FILTER_SETTINGS.abilityColoring);
	if ( CHATCONFIG_SELECTED_FILTER_SETTINGS.abilityColoring ) then
		OptionsFrame_EnableCheckBox(CombatConfigColorsColorizeSpellNamesSchoolColoring, nil, nil, 1);
	else
		OptionsFrame_DisableCheckBox(CombatConfigColorsColorizeSpellNamesSchoolColoring);
	end
	CombatConfigColorsColorizeSpellNamesSchoolColoring:SetChecked(CHATCONFIG_SELECTED_FILTER_SETTINGS.abilitySchoolColoring);
	CombatConfigColorsColorizeSpellNamesColorSwatchNormalTexture:SetVertexColor(GetTableColor(CHATCONFIG_SELECTED_FILTER_COLORS.defaults.spell));
	
	-- Damage Number
	CombatConfigColorsColorizeDamageNumberCheck:SetChecked(CHATCONFIG_SELECTED_FILTER_SETTINGS.amountColoring);
	if ( CHATCONFIG_SELECTED_FILTER_SETTINGS.amountColoring ) then
		OptionsFrame_EnableCheckBox(CombatConfigColorsColorizeDamageNumberSchoolColoring, nil, nil, 1);
	else
		OptionsFrame_DisableCheckBox(CombatConfigColorsColorizeDamageNumberSchoolColoring);
	end
	CombatConfigColorsColorizeDamageNumberSchoolColoring:SetChecked(CHATCONFIG_SELECTED_FILTER_SETTINGS.amountSchoolColoring);
	CombatConfigColorsColorizeDamageNumberColorSwatchNormalTexture:SetVertexColor(GetTableColor(CHATCONFIG_SELECTED_FILTER_COLORS.defaults.damage));
	
	-- Damage School
	CombatConfigColorsColorizeDamageSchoolCheck:SetChecked(CHATCONFIG_SELECTED_FILTER_SETTINGS.schoolNameColoring);
	
	-- Line Coloring
	CombatConfigColorsColorizeEntireLineCheck:SetChecked(CHATCONFIG_SELECTED_FILTER_SETTINGS.lineColoring);
	if ( CHATCONFIG_SELECTED_FILTER_SETTINGS.lineColoring ) then
		OptionsFrame_EnableCheckBox(CombatConfigColorsColorizeEntireLineBySource, nil, nil, 1);
		OptionsFrame_EnableCheckBox(CombatConfigColorsColorizeEntireLineByTarget, nil, nil, 1);
	else
		OptionsFrame_DisableCheckBox(CombatConfigColorsColorizeEntireLineBySource);
		OptionsFrame_DisableCheckBox(CombatConfigColorsColorizeEntireLineByTarget);
	end
	if ( CHATCONFIG_SELECTED_FILTER_SETTINGS.lineColorPriority == 1 ) then
		CombatConfigColorsColorizeEntireLineBySource:SetChecked(1);
		CombatConfigColorsColorizeEntireLineByTarget:SetChecked(nil);
	else
		CombatConfigColorsColorizeEntireLineBySource:SetChecked(nil);
		CombatConfigColorsColorizeEntireLineByTarget:SetChecked(1);
	end

	-- Line Highlighting
	CombatConfigColorsHighlightingLine:SetChecked(CHATCONFIG_SELECTED_FILTER_SETTINGS.lineHighlighting);
	CombatConfigColorsHighlightingAbility:SetChecked(CHATCONFIG_SELECTED_FILTER_SETTINGS.abilityHighlighting);
	CombatConfigColorsHighlightingDamage:SetChecked(CHATCONFIG_SELECTED_FILTER_SETTINGS.amountHighlighting);
	CombatConfigColorsHighlightingSchool:SetChecked(CHATCONFIG_SELECTED_FILTER_SETTINGS.schoolNameHighlighting);

	
	local text, r, g, b = CombatLog_OnEvent(CHATCONFIG_SELECTED_FILTER, 0, "SPELL_DAMAGE", 0x0000000000000001, UnitName("player"), 0x511, 0xF13000012B000820, EXAMPLE_TARGET_MONSTER, 0x10a28 ,116, EXAMPLE_SPELL_FROSTBOLT, SCHOOL_MASK_FROST, 27, SCHOOL_MASK_FROST, nil, nil, nil, 1, nil, nil);
	CombatConfigColorsExampleString1:SetVertexColor(r, g, b);
	CombatConfigColorsExampleString1:SetText(text);

	text, r, g, b = CombatLog_OnEvent(CHATCONFIG_SELECTED_FILTER, 0, "SPELL_DAMAGE", 0xF13000024D002914, EXAMPLE_TARGET_MONSTER, 0x10a48, 0x0000000000000001, UnitName("player"), 0x511, 20793,EXAMPLE_SPELL_FIREBALL, SCHOOL_MASK_FIRE, 68, SCHOOL_MASK_FIRE, nil, nil, nil, nil, nil, nil);
	CombatConfigColorsExampleString2:SetVertexColor(r, g, b);
	CombatConfigColorsExampleString2:SetText(text);
end

function CombatConfig_Formatting_Update()
	CombatConfigFormattingShowTimeStamp:SetChecked(CHATCONFIG_SELECTED_FILTER_SETTINGS.timestamp);
	CombatConfigFormattingShowBraces:SetChecked(CHATCONFIG_SELECTED_FILTER_SETTINGS.braces);
	if ( CHATCONFIG_SELECTED_FILTER_SETTINGS.braces ) then
		OptionsFrame_EnableCheckBox(CombatConfigFormattingUnitNames, nil, nil, 1);
		OptionsFrame_EnableCheckBox(CombatConfigFormattingSpellNames, nil, nil, 1);
		OptionsFrame_EnableCheckBox(CombatConfigFormattingItemNames, nil, nil, 1);
	else
		OptionsFrame_DisableCheckBox(CombatConfigFormattingUnitNames);
		OptionsFrame_DisableCheckBox(CombatConfigFormattingSpellNames);
		OptionsFrame_DisableCheckBox(CombatConfigFormattingItemNames);
	end
	CombatConfigFormattingUnitNames:SetChecked(CHATCONFIG_SELECTED_FILTER_SETTINGS.unitBraces);
	CombatConfigFormattingSpellNames:SetChecked(CHATCONFIG_SELECTED_FILTER_SETTINGS.spellBraces);
	CombatConfigFormattingItemNames:SetChecked(CHATCONFIG_SELECTED_FILTER_SETTINGS.itemBraces);
	CombatConfigFormattingFullText:SetChecked(CHATCONFIG_SELECTED_FILTER_SETTINGS.fullText);

	local text, r, g, b = CombatLog_OnEvent(CHATCONFIG_SELECTED_FILTER, 0, "SPELL_DAMAGE", 0x0000000000000001, UnitName("player"), 0x511, 0xF13000012B000820, EXAMPLE_TARGET_MONSTER, 0x10a28 ,116, EXAMPLE_SPELL_FROSTBOLT, SCHOOL_MASK_FROST, 27, SCHOOL_MASK_FROST, nil, nil, nil, 1, nil, nil);
	CombatConfigFormattingExampleString1:SetVertexColor(r, g, b);
	CombatConfigFormattingExampleString1:SetText(text);

	text, r, g, b = CombatLog_OnEvent(CHATCONFIG_SELECTED_FILTER, 0, "SPELL_DAMAGE", 0xF13000024D002914, EXAMPLE_TARGET_MONSTER, 0x10a48, 0x0000000000000001, UnitName("player"), 0x511, 20793,EXAMPLE_SPELL_FIREBALL, SCHOOL_MASK_FIRE, 68, SCHOOL_MASK_FIRE, nil, nil, nil, nil, nil, nil);
	CombatConfigFormattingExampleString2:SetVertexColor(r, g, b);
	CombatConfigFormattingExampleString2:SetText(text);
end

function CombatConfig_Settings_Update()
	CombatConfigSettingsShowQuickButton:SetChecked(CHATCONFIG_SELECTED_FILTER.hasQuickButton);
	if ( CHATCONFIG_SELECTED_FILTER.hasQuickButton ) then
		OptionsFrame_EnableCheckBox(CombatConfigSettingsSolo, nil, nil, 1);
		OptionsFrame_EnableCheckBox(CombatConfigSettingsParty, nil, nil, 1);
		OptionsFrame_EnableCheckBox(CombatConfigSettingsRaid, nil, nil, 1);
	else
		OptionsFrame_DisableCheckBox(CombatConfigSettingsSolo);
		OptionsFrame_DisableCheckBox(CombatConfigSettingsParty);
		OptionsFrame_DisableCheckBox(CombatConfigSettingsRaid);
	end
	CombatConfigSettingsSolo:SetChecked(CHATCONFIG_SELECTED_FILTER.quickButtonDisplay.solo);
	CombatConfigSettingsParty:SetChecked(CHATCONFIG_SELECTED_FILTER.quickButtonDisplay.party);
	CombatConfigSettingsRaid:SetChecked(CHATCONFIG_SELECTED_FILTER.quickButtonDisplay.raid);
end

function CombatConfig_SetFilterName(name)
	CHATCONFIG_SELECTED_FILTER.name = name;
	ChatConfig_UpdateFilterList();
end

function ToggleChatMessageGroup(checked, group)
	if ( checked ) then
		ChatFrame_AddMessageGroup(FCF_GetCurrentChatFrame(), group);
	else
		ChatFrame_RemoveMessageGroup(FCF_GetCurrentChatFrame(), group);
	end
end

function ToggleChatChannel(checked, channel)
	if ( checked ) then
		ChatFrame_AddChannel(FCF_GetCurrentChatFrame(), channel);
	else
		ChatFrame_RemoveChannel(FCF_GetCurrentChatFrame(), channel);
	end
end

function ToggleMessageSource(checked, filter)
	if ( not CHATCONFIG_SELECTED_FILTER_FILTERS[1].sourceFlags ) then
		CHATCONFIG_SELECTED_FILTER_FILTERS[1].sourceFlags = {};
	end
	local sourceFlags = CHATCONFIG_SELECTED_FILTER_FILTERS[1].sourceFlags;
	if ( checked ) then
		sourceFlags[filter] = true;
	else
		sourceFlags[filter] = false;
	end
end

function ToggleMessageDest(checked, filter)
	local destFlags;

	if ( UsesGUID( "SOURCE" )  ) then 
		if ( not CHATCONFIG_SELECTED_FILTER_FILTERS[1].destFlags ) then
			CHATCONFIG_SELECTED_FILTER_FILTERS[1].destFlags = {};
		end
		destFlags = CHATCONFIG_SELECTED_FILTER_FILTERS[1].destFlags;
	else
		if ( not CHATCONFIG_SELECTED_FILTER_FILTERS[2].destFlags ) then
			CHATCONFIG_SELECTED_FILTER_FILTERS[2].destFlags = {};
		end
			destFlags = CHATCONFIG_SELECTED_FILTER_FILTERS[2].destFlags;
	end
	if ( checked ) then
		destFlags[filter] = true;
	else
		destFlags[filter] = false;
	end
end


-- Create  parent is checked or unchecked if all children are unchecked
function ToggleMessageTypeGroup(checked, frame, index)
	local subTypes = frame.checkBoxTable[index].subTypes;
	local eventList = CHATCONFIG_SELECTED_FILTER_FILTERS[1].eventList;
	if ( subTypes ) then
		local state;
		local numChecked = 0;
		if ( checked ) then
			for k, v in ipairs(subTypes) do
				state = GetMessageTypeState(v.type);
				if ( state == true or state == GRAY_CHECKED ) then
					numChecked = numChecked+1;
				end
				if ( state == GRAY_CHECKED ) then
					
					if ( type(v.type) == "table" ) then
						for k2, v2 in pairs(v.type) do
							eventList[v2] = true;
						end
					else
						eventList[v.type] = true;
					end
				end
			end
			if ( numChecked == 0 ) then
				for k, v in ipairs(subTypes) do
					if ( type(v.type) == "table" ) then
						for k2, v2 in pairs(v.type) do
							eventList[v2] = CHECKED_NO_SUBTYPES;
						end
					else
						eventList[v.type] = CHECKED_NO_SUBTYPES;
					end
				end
			end
		else
			for k, v in ipairs(subTypes) do
				state = GetMessageTypeState(v.type);
				if ( state == true ) then
					if ( type(v.type) == "table" ) then
						for k2, v2 in pairs(v.type) do
							eventList[v2] = GRAY_CHECKED;
						end
					else
						eventList[v.type] = GRAY_CHECKED;
					end
					numChecked = numChecked+1;
				end
			end
			if ( numChecked == 0 ) then
				for k, v in ipairs(subTypes) do
					if ( type(v.type) == "table" ) then
						for k2, v2 in pairs(v.type) do
							eventList[v2] = UNCHECKED_NO_SUBTYPES;
						end
					else
						eventList[v.type] = UNCHECKED_NO_SUBTYPES;
					end
				end
			end
		end
	end
	ChatConfig_UpdateTieredCheckboxes(frame, index);
end

function ToggleMessageType(checked, ...)
	local eventList = CHATCONFIG_SELECTED_FILTER_FILTERS[1].eventList;
	for _, type in pairs ( {...} ) do 
		if ( checked ) then
			eventList[type] = true;
		else
			eventList[type] = false;
		end
	end
end

function IsListeningForMessageType(messageType)
	local messageTypeList = FCF_GetCurrentChatFrame().messageTypeList;
	for index, value in pairs(messageTypeList) do
		if ( value == messageType ) then
			return true;
		end
	end
	return false;
end

COMBATCONFIG_COLORPICKER_FUNCTIONS = {
	chatUnitColorSwatch = function() 
			SetChatUnitColor(CHAT_CONFIG_CURRENT_COLOR_SWATCH.type, ColorPickerFrame:GetColorRGB());
			getglobal(CHAT_CONFIG_CURRENT_COLOR_SWATCH:GetName().."NormalTexture"):SetVertexColor(ColorPickerFrame:GetColorRGB());
			CombatConfig_Colorize_Update();
		end;
	chatUnitColorCancel = function() 
			SetChatUnitColor(CHAT_CONFIG_CURRENT_COLOR_SWATCH.type, ColorPicker_GetPreviousValues());
			getglobal(CHAT_CONFIG_CURRENT_COLOR_SWATCH:GetName().."NormalTexture"):SetVertexColor(ColorPicker_GetPreviousValues());
			CombatConfig_Colorize_Update();
		end;
	spellColorSwatch = function() 
			SetTableColor(CHATCONFIG_SELECTED_FILTER_COLORS.defaults.spell, ColorPickerFrame:GetColorRGB());
			getglobal(CHAT_CONFIG_CURRENT_COLOR_SWATCH:GetName().."NormalTexture"):SetVertexColor(ColorPickerFrame:GetColorRGB());
			CombatConfig_Colorize_Update();
		end;
	spellColorCancel = function() 
			SetTableColor(CHATCONFIG_SELECTED_FILTER_COLORS.defaults.spell, ColorPicker_GetPreviousValues());
			getglobal(CHAT_CONFIG_CURRENT_COLOR_SWATCH:GetName().."NormalTexture"):SetVertexColor(ColorPicker_GetPreviousValues());
			CombatConfig_Colorize_Update();
		end;
	damageColorSwatch = function() 
			SetTableColor(CHATCONFIG_SELECTED_FILTER_COLORS.defaults.damage, ColorPickerFrame:GetColorRGB());
			getglobal(CHAT_CONFIG_CURRENT_COLOR_SWATCH:GetName().."NormalTexture"):SetVertexColor(ColorPickerFrame:GetColorRGB());
			CombatConfig_Colorize_Update();
		end;
	damageColorCancel = function() 
			SetTableColor(CHATCONFIG_SELECTED_FILTER_COLORS.defaults.damage, ColorPicker_GetPreviousValues());
			getglobal(CHAT_CONFIG_CURRENT_COLOR_SWATCH:GetName().."NormalTexture"):SetVertexColor(ColorPicker_GetPreviousValues());
			CombatConfig_Colorize_Update();
		end;
	messageTypeColorSwatch = function() 
			local messageTypes = ColorPickerFrame.extraInfo;
			if ( messageTypes ) then
				for index, value in pairs(messageTypes) do
					ChangeChatColor(FCF_StripChatMsg(value), ColorPickerFrame:GetColorRGB());
				end
			else
				ChangeChatColor(CHAT_CONFIG_CURRENT_COLOR_SWATCH.type, ColorPickerFrame:GetColorRGB());
			end
			getglobal(CHAT_CONFIG_CURRENT_COLOR_SWATCH:GetName().."NormalTexture"):SetVertexColor(ColorPickerFrame:GetColorRGB());
			CombatConfig_Colorize_Update();
		end;
	messageTypeColorCancel = function() 
			ChangeChatColor(CHAT_CONFIG_CURRENT_COLOR_SWATCH.type, ColorPicker_GetPreviousValues());
			getglobal(CHAT_CONFIG_CURRENT_COLOR_SWATCH:GetName().."NormalTexture"):SetVertexColor(ColorPicker_GetPreviousValues());
			CombatConfig_Colorize_Update();
		end;
}

function ChatUnitColor_OpenColorPicker(self)
	local info = UIDropDownMenu_CreateInfo();
	info.r, info.g, info.b = GetChatUnitColor(self.type);
	CHAT_CONFIG_CURRENT_COLOR_SWATCH = self;
	info.swatchFunc = COMBATCONFIG_COLORPICKER_FUNCTIONS.chatUnitColorSwatch;
	info.cancelFunc = COMBATCONFIG_COLORPICKER_FUNCTIONS.chatUnitColorCancel;
	OpenColorPicker(info);
end

function SpellColor_OpenColorPicker(self)
	local info = UIDropDownMenu_CreateInfo();
	CHAT_CONFIG_CURRENT_COLOR_SWATCH = self;
	info.r, info.g, info.b = GetTableColor(CHATCONFIG_SELECTED_FILTER_COLORS.defaults.spell);
	info.swatchFunc = COMBATCONFIG_COLORPICKER_FUNCTIONS.spellColorSwatch;
	info.cancelFunc = COMBATCONFIG_COLORPICKER_FUNCTIONS.spellColorCancel;
	OpenColorPicker(info);
end

function DamageColor_OpenColorPicker(self)
	local info = UIDropDownMenu_CreateInfo();
	CHAT_CONFIG_CURRENT_COLOR_SWATCH = self;
	info.r, info.g, info.b = GetTableColor(CHATCONFIG_SELECTED_FILTER_COLORS.defaults.damage);
	info.swatchFunc = COMBATCONFIG_COLORPICKER_FUNCTIONS.damageColorSwatch;
	info.cancelFunc = COMBATCONFIG_COLORPICKER_FUNCTIONS.damageColorCancel;
	OpenColorPicker(info);
end

function MessageTypeColor_OpenColorPicker(self)
	local info = UIDropDownMenu_CreateInfo();
	local messageTypeTable;
	info.r, info.g, info.b, messageTypeTable = GetMessageTypeColor(self.type);
	CHAT_CONFIG_CURRENT_COLOR_SWATCH = self;
	info.swatchFunc = COMBATCONFIG_COLORPICKER_FUNCTIONS.messageTypeColorSwatch;
	info.cancelFunc = COMBATCONFIG_COLORPICKER_FUNCTIONS.messageTypeColorCancel;
	info.extraInfo = nil;
	if ( messageTypeTable ) then
		info.extraInfo = messageTypeTable;
	end
	OpenColorPicker(info);
end

function GetMessageTypeColor(messageType)
	local group = ChatTypeGroup[messageType];
	local type;
	if ( group ) then
		type = group[1];
	else
		type = messageType;
	end
	local info = ChatTypeInfo[FCF_StripChatMsg(type)];
	
	return info.r, info.g, info.b, group;
end

function GetChatUnitColor(type)
	local color = CHATCONFIG_SELECTED_FILTER_COLORS.unitColoring[getglobal(type)];
	return color.r, color.g, color.b;
end

function SetChatUnitColor(type, r, g, b)
	SetTableColor(CHATCONFIG_SELECTED_FILTER_COLORS.unitColoring[getglobal(type)], r, g, b);
end

function GetSpellNameColor()
	local color = CHATCONFIG_SELECTED_FILTER_COLORS.defaults.spell;
	return color.r, color.g, color.b;
end

function SetSpellNameColor(r, g, b)
	SetTableColor(CHATCONFIG_SELECTED_FILTER_COLORS.defaults.spell, r, g, b);
end

-- Convenience functions for pulling and putting rgb values into tables
function GetTableColor(color)
	return color.r, color.g, color.b;
end

function SetTableColor(color, r, g, b)
	color.r = r;
	color.g = g;
	color.b = b;
end


CHAT_CONFIG_CATEGORIES = {
	[1] = "ChatConfigChatSettings",
	[2] = "ChatConfigCombatSettings",
	[3] = "ChatConfigChannelSettings",
	[4] = "ChatConfigOtherSettings",
};

function ChatConfigCategory_OnClick(self)
	self:UnlockHighlight();
	for index, value in ipairs(CHAT_CONFIG_CATEGORIES) do
		if ( self:GetID() == index ) then
			getglobal(value):Show();
			self:LockHighlight();
		else
			getglobal(value):Hide();
			getglobal("ChatConfigCategoryFrameButton"..index):UnlockHighlight();
		end
	end
end

function CreateChatChannelList(...)
	if ( not FCF_GetCurrentChatFrame() ) then
		return;
	end
	local channelList = FCF_GetCurrentChatFrame().channelList;
	local zoneChannelList = FCF_GetCurrentChatFrame().zoneChannelList;
	local channel, channelID, tag;
	local checked;
	local count = 1;
	CHAT_CONFIG_CHANNEL_LIST = {};
	for i=1, select("#", ...), 2 do
		channelID = select(i, ...);
		tag = "CHANNEL"..channelID;
		channel = select(i+1, ...);
		checked = nil;
		if ( channelList ) then
			for index, value in pairs(channelList) do
				if ( value == channel ) then
					checked = 1;
				end
			end
		end
		if ( zoneChannelList ) then
			for index, value in pairs(zoneChannelList) do
				if ( value == channel ) then
					checked = 1;
				end
			end
		end
		CHAT_CONFIG_CHANNEL_LIST[count] = {};
		CHAT_CONFIG_CHANNEL_LIST[count].text = channelID.."."..channel;
		CHAT_CONFIG_CHANNEL_LIST[count].channelName = channel;
		CHAT_CONFIG_CHANNEL_LIST[count].type = tag;
		CHAT_CONFIG_CHANNEL_LIST[count].checked = checked;
		CHAT_CONFIG_CHANNEL_LIST[count].func = function (checked) 
							ToggleChatChannel(checked, CHAT_CONFIG_CHANNEL_LIST[this:GetID()].channelName); 
							end;
		count = count+1;
	end
end

COMBAT_CONFIG_TABS = {
	[1] = { text = MESSAGE_SOURCES, frame = "CombatConfigMessageSources" },
	[2] = { text = MESSAGE_TYPES, frame = "CombatConfigMessageTypes" },
	[3] = { text = COLORS, frame = "CombatConfigColors" },
	[4] = { text = FORMATTING, frame = "CombatConfigFormatting" },
	[5] = { text = SETTINGS, frame = "CombatConfigSettings" },
};
CHAT_CONFIG_COMBAT_TAB_NAME = "CombatConfigTab";
function ChatConfigCombat_OnLoad()
	-- Create tabs
	local tab;
	local tabName = CHAT_CONFIG_COMBAT_TAB_NAME;
	local name, text;
	for index, value in ipairs(COMBAT_CONFIG_TABS) do
		name = tabName..index;
		if ( not getglobal(name) ) then
			tab = CreateFrame("BUTTON", name, ChatConfigBackgroundFrame, "ChatConfigTabTemplate");
			if ( index > 1 ) then
				tab:SetPoint("BOTTOMLEFT", getglobal(tabName..(index-1)), "BOTTOMRIGHT", -1, 0);
			else
				tab:SetPoint("BOTTOMLEFT", ChatConfigBackgroundFrame, "TOPLEFT", 2, -1);
			end
			
			text = getglobal(name.."Text");
			text:SetText(value.text);
			tab:SetID(index);
			PanelTemplates_TabResize(0, tab);
		end
	end
end

function ChatConfig_UpdateFilterList()
	local index;
	local offset = FauxScrollFrame_GetOffset(ChatConfigCombatSettingsFiltersScrollFrame);
	local button, buttonName, filter, text;
	for i=1, COMBATLOG_FILTERS_TO_DISPLAY do
		index = offset+i;
		buttonName = "ChatConfigCombatSettingsFiltersButton"..i;
		button = getglobal(buttonName);
		if ( index <= #Blizzard_CombatLog_Filters.filters ) then
			text = Blizzard_CombatLog_Filters.filters[index].name;
			getglobal(buttonName.."NormalText"):SetText(text);
			button.name = text;
			button:Show();
			if ( index == ChatConfigCombatSettingsFilters.selectedFilter ) then
				button:LockHighlight();
			else
				button:UnlockHighlight();
			end
		else
			button:Hide();
		end
	end
	if ( FauxScrollFrame_Update(ChatConfigCombatSettingsFiltersScrollFrame, #Blizzard_CombatLog_Filters.filters, COMBATLOG_FILTERS_TO_DISPLAY, CHATCONFIG_FILTER_HEIGHT ) ) then
		ChatConfigCombatSettingsFiltersButton1:SetPoint("TOPRIGHT", ChatConfigCombatSettingsFilters, "TOPRIGHT", -29, -7);
	else
		ChatConfigCombatSettingsFiltersButton1:SetPoint("TOPRIGHT", ChatConfigCombatSettingsFilters, "TOPRIGHT", -5, -7);
	end
	-- Update the combat log quick buttons
	Blizzard_CombatLog_Update_QuickButtons();
end

function ChatConfigFilter_OnClick(id)
	if ( #Blizzard_CombatLog_Filters.filters > 0 ) then
		ChatConfigCombatSettingsFilters.selectedFilter = id;
		CHATCONFIG_SELECTED_FILTER = Blizzard_CombatLog_Filters.filters[ChatConfigCombatSettingsFilters.selectedFilter];
		CHATCONFIG_SELECTED_FILTER_FILTERS = CHATCONFIG_SELECTED_FILTER.filters;
		CHATCONFIG_SELECTED_FILTER_COLORS = CHATCONFIG_SELECTED_FILTER.colors;
		CHATCONFIG_SELECTED_FILTER_SETTINGS = CHATCONFIG_SELECTED_FILTER.settings;
	end
	ChatConfig_UpdateFilterList();
	ChatConfig_UpdateCombatSettings();
end

function ChatConfig_UpdateCombatSettings()
	if ( #Blizzard_CombatLog_Filters.filters == 0 ) then
		ChatConfigCombatSettingsFiltersCopyFilterButton:Disable();
		ChatConfigCombatSettingsFiltersDeleteButton:Disable();
		ChatConfig_UpdateCombatTabs(0);
		for index, value in ipairs(COMBAT_CONFIG_TABS) do
			getglobal(value.frame):Hide();
		end
		return;
	elseif ( #Blizzard_CombatLog_Filters.filters == 1 ) then
		-- Don't allow them to delete the last filter for now
		ChatConfigCombatSettingsFiltersDeleteButton:Disable();
	else
		ChatConfigCombatSettingsFiltersCopyFilterButton:Enable();
		ChatConfigCombatSettingsFiltersDeleteButton:Enable();
	end
	if ( CanCreateFilters() ) then
		ChatConfigCombatSettingsFiltersAddFilterButton:Enable();
	else
		ChatConfigCombatSettingsFiltersAddFilterButton:Disable();
	end
	
	ChatConfig_UpdateCheckboxes(CombatConfigMessageSourcesDoneBy);
	ChatConfig_UpdateCheckboxes(CombatConfigMessageSourcesDoneTo);
	
	ChatConfig_UpdateTieredCheckboxFrame(CombatConfigMessageTypesLeft);
	ChatConfig_UpdateTieredCheckboxFrame(CombatConfigMessageTypesRight);
	ChatConfig_UpdateTieredCheckboxFrame(CombatConfigMessageTypesMisc);

	ChatConfig_UpdateSwatches(CombatConfigColorsUnitColors);
	CombatConfig_Colorize_Update();
	CombatConfig_Formatting_Update();
	CombatConfig_Settings_Update();

	CombatConfigSettingsNameEditBox:SetText(CHATCONFIG_SELECTED_FILTER.name);
end

function ChatConfig_UpdateChatSettings()
	ChatConfig_UpdateCheckboxes(ChatConfigChatSettingsLeft);
	ChatConfig_UpdateCheckboxes(ChatConfigChatSettingsRight);
	ChatConfig_UpdateCheckboxes(ChatConfigChatSettingsCreatureLeft);
	-- Only do this if the ChannelSettings table has been created. It gets created OnShow()
	if ( ChatConfigChannelSettingsLeft.checkBoxTable ) then
		ChatConfig_UpdateCheckboxes(ChatConfigChannelSettingsLeft);
	end
	ChatConfig_UpdateCheckboxes(ChatConfigOtherSettingsCombat);
	ChatConfig_UpdateCheckboxes(ChatConfigOtherSettingsPVP);
	ChatConfig_UpdateCheckboxes(ChatConfigOtherSettingsSystem);
end

function UsesGUID(direction)
	if ( direction == "SOURCE" and CHATCONFIG_SELECTED_FILTER_FILTERS[1].sourceFlags ) then
		for k,v in pairs( CHATCONFIG_SELECTED_FILTER_FILTERS[1].sourceFlags ) do
			if ( type(k) == "string" ) then
				return true;
			end
		end
	end
	if ( direction == "DEST" and CHATCONFIG_SELECTED_FILTER_FILTERS[1].destFlags ) then
		for k,v in pairs( CHATCONFIG_SELECTED_FILTER_FILTERS[1].destFlags ) do
			if ( type(k) == "string" ) then
				return true;
			end
		end
	end
	return false;
end

function IsMessageDoneBy(filter)
	local sourceFlags;
	if ( not CHATCONFIG_SELECTED_FILTER_FILTERS[1].sourceFlags ) then
		return true;
	end
	sourceFlags = CHATCONFIG_SELECTED_FILTER_FILTERS[1].sourceFlags;

	return sourceFlags[filter];
end

function IsMessageDoneTo(filter)
	local destFlags;

	if ( UsesGUID( "SOURCE" ) or UsesGUID("DEST") ) then 
		if ( not CHATCONFIG_SELECTED_FILTER_FILTERS[1].destFlags ) then
			return true;
		end
		destFlags = CHATCONFIG_SELECTED_FILTER_FILTERS[1].destFlags;
	else

		destFlags = Blizzard_CombatLog_Filters.filters[ChatConfigCombatSettingsFilters.selectedFilter].filters[2].destFlags;
	end

	return destFlags[filter];
end

function HasMessageTypeGroup(checkBoxList, index)
	local subTypes = checkBoxList[index].subTypes;
	if ( subTypes ) then
		local state;
		local numChecked = 0;
		for k, v in ipairs(subTypes) do
			state = GetMessageTypeState(v.type);
			if ( state == GRAY_CHECKED or state == UNCHECKED_NO_SUBTYPES ) then
				return false;
			elseif ( state == CHECKED_NO_SUBTYPES ) then
				return true;
			elseif ( state ) then
				numChecked = numChecked + 1;
			end
		end
		if ( numChecked > 0 ) then
			return true;
		else
			return false;
		end
	end
	return false;
end

function HasMessageType(messageType)
	-- Only look at the first messageType passed in since we're treating them as a unit
	local isListening = GetMessageTypeState(messageType);
	if ( isListening == CHECKED_NO_SUBTYPES or isListening == UNCHECKED_NO_SUBTYPES ) then
		return false;
	elseif ( isListening ) then
		return true;
	else
		return false;
	end
end

function GetMessageTypeState(messageType)
	if ( type(messageType) == "table" ) then
		return CHATCONFIG_SELECTED_FILTER_FILTERS[1].eventList[messageType[1]];
	else
		return CHATCONFIG_SELECTED_FILTER_FILTERS[1].eventList[messageType];
	end
end

function ChatConfig_UpdateCombatTabs(selectedTabID)
	local tab, text, frame;
	for index, value in ipairs(COMBAT_CONFIG_TABS) do
		tab = getglobal(CHAT_CONFIG_COMBAT_TAB_NAME..index);
		text = getglobal(CHAT_CONFIG_COMBAT_TAB_NAME..index.."Text");
		frame = getglobal(value.frame);
		if ( #Blizzard_CombatLog_Filters.filters == 0 ) then
			tab:SetAlpha(0.75);
			text:SetVertexColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b);
		elseif ( index == selectedTabID ) then
			tab:SetAlpha(1.0);
			text:SetVertexColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
			frame:Show();
		else
			tab:SetAlpha(0.75);
			text:SetVertexColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
			frame:Hide();
		end

	end
end

function ChatConfig_ShowCombatTabs()
	for index, _ in ipairs(COMBAT_CONFIG_TABS) do
		getglobal(CHAT_CONFIG_COMBAT_TAB_NAME..index):Show();
	end
end

function ChatConfig_HideCombatTabs()
	for index, _ in ipairs(COMBAT_CONFIG_TABS) do
		getglobal(CHAT_CONFIG_COMBAT_TAB_NAME..index):Hide();
	end
end

function CombatConfig_CreateCombatFilter(name, filter)
	local newFilter;
	if ( not filter ) then
		newFilter = CopyTable(DEFAULT_COMBATLOG_FILTER_TEMPLATE);
	else
		newFilter = CopyTable(filter);
	end
	if ( not name or name == "" ) then
		name = format(DEFAULT_COMBATLOG_FILTER_NAME, #Blizzard_CombatLog_Filters.filters);
	end
	newFilter.name = name;
	tinsert(Blizzard_CombatLog_Filters.filters, newFilter);
	-- Scroll filters to top of list
	ChatConfigCombatSettingsFiltersScrollFrameScrollBar:SetValue(0);
	-- Select the new filter
	ChatConfigFilter_OnClick(#Blizzard_CombatLog_Filters.filters);
	-- If creating a filter when there wasn't any before then update the tabs with the first one selected
	if ( #Blizzard_CombatLog_Filters.filters == 1 ) then
		ChatConfig_UpdateCombatTabs(1);
	end
end

function CombatConfig_DeleteCurrentCombatFilter()
	-- Don't allow deletion of all filters
	if ( #Blizzard_CombatLog_Filters.filters <= 1 ) then
		return;
	end
	tremove(Blizzard_CombatLog_Filters.filters, ChatConfigCombatSettingsFilters.selectedFilter);
	-- If the deleted filter comes before or is the selected filter, force the current filter to the first
	if ( ChatConfigCombatSettingsFilters.selectedFilter <= Blizzard_CombatLog_Filters.currentFilter ) then
		Blizzard_CombatLog_QuickButton_OnClick(1);
	end
	
	-- Scroll filters to top of list
	ChatConfigCombatSettingsFiltersScrollFrameScrollBar:SetValue(0);
	-- Select the first filter
	ChatConfigFilter_OnClick(1);
end

function CombatConfig_SetCombatFiltersToDefault()
	Blizzard_CombatLog_Filters = CopyTable(Blizzard_CombatLog_Filter_Defaults);
	-- Have to call this because of the way the upvalues are setup in the combatlog
	Blizzard_CombatLog_RefreshGlobalLinks();
	Blizzard_CombatLog_CurrentSettings = Blizzard_CombatLog_Filters.filters[1]
	ChatConfig_UpdateFilterList();
	ChatConfigFilter_OnClick(1);
	ChatConfig_UpdateCombatTabs(1);
end

function ChatConfig_MoveFilterUp()
	local selectedFilter = ChatConfigCombatSettingsFilters.selectedFilter;
	if ( selectedFilter == 1 ) then
		return;
	end
	local newIndex = selectedFilter-1;
	tinsert(Blizzard_CombatLog_Filters.filters, newIndex, CHATCONFIG_SELECTED_FILTER);
	tremove(Blizzard_CombatLog_Filters.filters, selectedFilter+1);
	if ( selectedFilter == Blizzard_CombatLog_Filters.currentFilter  ) then
		Blizzard_CombatLog_Filters.currentFilter = newIndex;
	elseif ( newIndex == Blizzard_CombatLog_Filters.currentFilter ) then
		Blizzard_CombatLog_Filters.currentFilter = Blizzard_CombatLog_Filters.currentFilter+1;
	end
	Blizzard_CombatLog_CurrentSettings = Blizzard_CombatLog_Filters.filters[Blizzard_CombatLog_Filters.currentFilter];
	ChatConfigFilter_OnClick(newIndex);
end

function ChatConfig_MoveFilterDown()
	local selectedFilter = ChatConfigCombatSettingsFilters.selectedFilter;
	if ( selectedFilter >= #Blizzard_CombatLog_Filters.filters ) then
		selectedFilter = #Blizzard_CombatLog_Filters.filters;
		return;
	end
	local newIndex = selectedFilter+2;
	tinsert(Blizzard_CombatLog_Filters.filters, newIndex, CHATCONFIG_SELECTED_FILTER);
	tremove(Blizzard_CombatLog_Filters.filters, selectedFilter);
	if ( selectedFilter == Blizzard_CombatLog_Filters.currentFilter  ) then
		Blizzard_CombatLog_Filters.currentFilter = selectedFilter+1;
	elseif ( selectedFilter+1 == Blizzard_CombatLog_Filters.currentFilter ) then
		Blizzard_CombatLog_Filters.currentFilter = selectedFilter;
	end
	Blizzard_CombatLog_CurrentSettings = Blizzard_CombatLog_Filters.filters[Blizzard_CombatLog_Filters.currentFilter];
	ChatConfigFilter_OnClick(selectedFilter+1);
end

function ChatConfigCancel_OnClick()
	-- Copy the old settings back in place
	Blizzard_CombatLog_Filters = CopyTable(CHATCONFIG_SELECTED_FILTER_OLD_SETTINGS);
	-- Have to call this because of the way the upvalues are setup in the combatlog
	Blizzard_CombatLog_RefreshGlobalLinks();

	CHATCONFIG_SELECTED_FILTER = Blizzard_CombatLog_Filters.filters[ChatConfigCombatSettingsFilters.selectedFilter];
	-- Handle the case where the selected filter no longer exists!!!
	if ( not CHATCONFIG_SELECTED_FILTER ) then
		ChatConfigFilter_OnClick(1);
		HideUIPanel(ChatConfigFrame);
		return;
	end

	CHATCONFIG_SELECTED_FILTER_FILTERS = CHATCONFIG_SELECTED_FILTER.filters;
	CHATCONFIG_SELECTED_FILTER_COLORS = CHATCONFIG_SELECTED_FILTER.colors;
	CHATCONFIG_SELECTED_FILTER_SETTINGS = CHATCONFIG_SELECTED_FILTER.settings;
	
	HideUIPanel(ChatConfigFrame);
end

function CanCreateFilters()
	if ( #Blizzard_CombatLog_Filters.filters == MAX_COMBATLOG_FILTERS ) then
		return false;
	end
	return true;
end

function ChatConfigFrame_PlayCheckboxSound (checked)
	if ( checked ) then
		PlaySound("igMainMenuOptionCheckBoxOn");
	else
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
end
