
MONEY_ICON_WIDTH = 19;
MONEY_ICON_WIDTH_SMALL = 13;

MONEY_BUTTON_SPACING = -4;
MONEY_BUTTON_SPACING_SMALL = -4;

COPPER_PER_SILVER = 100;
SILVER_PER_GOLD = 100;
COPPER_PER_GOLD = COPPER_PER_SILVER * SILVER_PER_GOLD;

COIN_BUTTON_WIDTH = 32;

MoneyTypeInfo = { };
MoneyTypeInfo["PLAYER"] = {
	UpdateFunc = function()
		return (GetMoney() - GetCursorMoney() - GetPlayerTradeMoney());
	end,

	PickupFunc = function(amount)
		PickupPlayerMoney(amount);
	end,

	DropFunc = function()
		DropCursorMoney();
	end,

	collapse = 1,
	canPickup = 1,
	showSmallerCoins = "Backpack"
};
MoneyTypeInfo["STATIC"] = {
	UpdateFunc = function()
		return this.staticMoney;
	end,

	collapse = 1,
};
MoneyTypeInfo["AUCTION"] = {
	UpdateFunc = function()
		return this.staticMoney;
	end,
	showSmallerCoins = "Backpack",
	fixedWidth = 1,
	collapse = 1,
	truncateSmallCoins = nil,
};
MoneyTypeInfo["PLAYER_TRADE"] = {
	UpdateFunc = function()
		return GetPlayerTradeMoney();
	end,

	PickupFunc = function(amount)
		PickupTradeMoney(amount);
	end,

	DropFunc = function()
		AddTradeMoney();
	end,

	collapse = 1,
	canPickup = 1,
};
MoneyTypeInfo["TARGET_TRADE"] = {
	UpdateFunc = function()
		return GetTargetTradeMoney();
	end,

	collapse = 1,
};
MoneyTypeInfo["SEND_MAIL"] = {
	UpdateFunc = function()
		return GetSendMailMoney();
	end,

	PickupFunc = function(amount)
		PickupSendMailMoney(amount);
	end,

	DropFunc = function()
		AddSendMailMoney();
	end,

	collapse = nil,
	canPickup = 1,
	showSmallerCoins = "Backpack",
};
MoneyTypeInfo["SEND_MAIL_COD"] = {
	UpdateFunc = function()
		return GetSendMailCOD();
	end,

	PickupFunc = function(amount)
		PickupSendMailCOD(amount);
	end,

	DropFunc = function()
		AddSendMailCOD();
	end,

	collapse = 1,
	canPickup = 1,
};
MoneyTypeInfo["GUILDBANK"] = {
	OnloadFunc = function()
		this:RegisterEvent("GUILDBANK_UPDATE_MONEY");
	end,

	UpdateFunc = function()
		return (GetGuildBankMoney() - GetCursorMoney());
	end,

	PickupFunc = function(amount)
		PickupGuildBankMoney(amount);
	end,

	DropFunc = function()
		DropCursorMoney();
	end,

	collapse = 1,
	showSmallerCoins = "Backpack",
};

MoneyTypeInfo["GUILDBANKWITHDRAW"] = {
	OnloadFunc = function()
		this:RegisterEvent("GUILDBANK_UPDATE_WITHDRAWMONEY");
	end,

	UpdateFunc = function()
		GuildBankFrame_UpdateWithdrawMoney();
		return nil;
	end,

	collapse = 1,
	showSmallerCoins = "Backpack",
};

MoneyTypeInfo["GUILD_REPAIR"] = {
	UpdateFunc = function()
		return this.staticMoney;
	end,

	collapse = 1,
	showSmallerCoins = "Backpack",
};



function MoneyFrame_OnLoad()
	this:RegisterEvent("PLAYER_MONEY");
	this:RegisterEvent("PLAYER_TRADE_MONEY");
	this:RegisterEvent("TRADE_MONEY_CHANGED");
	this:RegisterEvent("SEND_MAIL_MONEY_CHANGED");
	this:RegisterEvent("SEND_MAIL_COD_CHANGED");
	MoneyFrame_SetType("PLAYER");
end

function SmallMoneyFrame_OnLoad(moneyType)
	--If there's a moneyType we'll use the new way of doing things, otherwise do things the old way
	if ( moneyType ) then
		local info = MoneyTypeInfo[moneyType];
		if ( info and info.OnloadFunc ) then
			--This way you can just register for the events that you care about
			--Should write OnloadFunc's for all money frames, but don't have time right now
			info.OnloadFunc();
			this.small = 1;
			MoneyFrame_SetType(moneyType);
		end
	else
		--The old sucky way of doing things
		this:RegisterEvent("PLAYER_MONEY");
		this:RegisterEvent("PLAYER_TRADE_MONEY");
		this:RegisterEvent("TRADE_MONEY_CHANGED");
		this:RegisterEvent("SEND_MAIL_MONEY_CHANGED");
		this:RegisterEvent("SEND_MAIL_COD_CHANGED");
		this.small = 1;
		MoneyFrame_SetType("PLAYER");
	end
end

function MoneyFrame_OnEvent()
	if ( not this.info or not this:IsVisible() ) then
		return;
	end

	if ( event == "PLAYER_MONEY" and this.moneyType == "PLAYER" ) then
		MoneyFrame_UpdateMoney();
	elseif ( event == "PLAYER_TRADE_MONEY" and (this.moneyType == "PLAYER" or this.moneyType == "PLAYER_TRADE") ) then
		MoneyFrame_UpdateMoney();
	elseif ( event == "TRADE_MONEY_CHANGED" and this.moneyType == "TARGET_TRADE" ) then
		MoneyFrame_UpdateMoney();
	elseif ( event == "SEND_MAIL_MONEY_CHANGED" and (this.moneyType == "PLAYER" or this.moneyType == "SEND_MAIL") ) then
		MoneyFrame_UpdateMoney();
	elseif ( event == "SEND_MAIL_COD_CHANGED" and (this.moneyType == "PLAYER" or this.moneyType == "SEND_MAIL_COD") ) then
		MoneyFrame_UpdateMoney();
	elseif ( event == "GUILDBANK_UPDATE_MONEY" and (this.moneyType == "GUILDBANK") ) then
		MoneyFrame_UpdateMoney();
	elseif ( event == "GUILDBANK_UPDATE_WITHDRAWMONEY" and (this.moneyType == "GUILDBANKWITHDRAW") ) then
		MoneyFrame_UpdateMoney();
	end
end

function MoneyFrame_SetType(type, moneyFrame)
	if ( not moneyFrame ) then
		moneyFrame = this;
	end
	local info = MoneyTypeInfo[type];
	if ( not info ) then
		message("Invalid money type: "..type);
		return;
	end
	moneyFrame.info = info;
	moneyFrame.moneyType = type;
	local frameName = moneyFrame:GetName();
	if ( info.canPickup ) then
		getglobal(frameName.."GoldButton"):EnableMouse(true);
		getglobal(frameName.."SilverButton"):EnableMouse(true);
		getglobal(frameName.."CopperButton"):EnableMouse(true);
	else
		getglobal(frameName.."GoldButton"):EnableMouse(false);
		getglobal(frameName.."SilverButton"):EnableMouse(false);
		getglobal(frameName.."CopperButton"):EnableMouse(false);
	end

	MoneyFrame_UpdateMoney(moneyFrame);
end

-- Update the money shown in a money frame
function MoneyFrame_UpdateMoney(moneyFrame)
	if ( not moneyFrame ) then
		moneyFrame = this;
	end
	if ( moneyFrame.info ) then
		local money = moneyFrame.info.UpdateFunc();
		if ( money ) then
			MoneyFrame_Update(moneyFrame:GetName(), money);
		end
		if ( moneyFrame.hasPickup == 1 ) then
			UpdateCoinPickupFrame(money);
		end
	else
		message("Error moneyType not set");
	end
end

function MoneyFrame_Update(frameName, money)
	local frame = getglobal(frameName);
	local info = frame.info;
	if ( not info ) then
		message("Error moneyType not set");
	end

	-- Breakdown the money into denominations
	local gold = floor(money / (COPPER_PER_SILVER * SILVER_PER_GOLD));
	local silver = floor((money - (gold * COPPER_PER_SILVER * SILVER_PER_GOLD)) / COPPER_PER_SILVER);
	local copper = mod(money, COPPER_PER_SILVER);

	local goldButton = getglobal(frameName.."GoldButton");
	local silverButton = getglobal(frameName.."SilverButton");
	local copperButton = getglobal(frameName.."CopperButton");

	local iconWidth = MONEY_ICON_WIDTH;
	local spacing = MONEY_BUTTON_SPACING;
	if ( frame.small ) then
		iconWidth = MONEY_ICON_WIDTH_SMALL;
		spacing = MONEY_BUTTON_SPACING_SMALL;
	end

	-- Set values for each denomination
	goldButton:SetText(gold);
	goldButton:SetWidth(goldButton:GetTextWidth() + iconWidth);
	goldButton:Show();
	silverButton:SetText(silver);
	silverButton:SetWidth(silverButton:GetTextWidth() + iconWidth);
	silverButton:Show();
	copperButton:SetText(copper);
	copperButton:SetWidth(copperButton:GetTextWidth() + iconWidth);
	copperButton:Show();

	-- Store how much money the frame is displaying
	frame.staticMoney = money;

	-- If not collapsable don't need to continue
	if ( not info.collapse ) then
		return;
	end

	local width = iconWidth;

	local showLowerDenominations, truncateCopper;
	if ( gold > 0 ) then
		width = width + goldButton:GetWidth();
		if ( info.showSmallerCoins ) then
			showLowerDenominations = 1;
		end
		if ( info.truncateSmallCoins ) then
			truncateCopper = 1;
		end
	else
		goldButton:Hide();
	end

	goldButton:ClearAllPoints();
	if ( silver > 0 or showLowerDenominations ) then
		-- Exception if showLowerDenominations and fixedWidth
		if ( showLowerDenominations and info.fixedWidth ) then
			silverButton:SetWidth(COIN_BUTTON_WIDTH);
		end
		
		width = width + silverButton:GetWidth();
		goldButton:SetPoint("RIGHT", frameName.."SilverButton", "LEFT", spacing, 0);
		if ( goldButton:IsShown() ) then
			width = width - spacing;
		end
		if ( info.showSmallerCoins ) then
			showLowerDenominations = 1;
		end
	else
		silverButton:Hide();
		goldButton:SetPoint("RIGHT", frameName.."SilverButton",	"RIGHT", 0, 0);
	end

	-- Used if we're not showing lower denominations
	silverButton:ClearAllPoints();
	if ( (copper > 0 or showLowerDenominations or info.showSmallerCoins == "Backpack") and not truncateCopper) then
		-- Exception if showLowerDenominations and fixedWidth
		if ( showLowerDenominations and info.fixedWidth ) then
			copperButton:SetWidth(COIN_BUTTON_WIDTH);
		end
		
		width = width + copperButton:GetWidth();
		silverButton:SetPoint("RIGHT", frameName.."CopperButton", "LEFT", spacing, 0);
		if ( silverButton:IsShown() ) then
			width = width - spacing;
		end
	else
		copperButton:Hide();
		silverButton:SetPoint("RIGHT", frameName.."CopperButton", "RIGHT", 0, 0);
	end

	-- make sure the copper button is in the right place
	copperButton:ClearAllPoints();
	copperButton:SetPoint("RIGHT", frameName, "RIGHT", -13, 0);

	-- attach text now that denominations have been computed
	local prefixText = getglobal(frameName.."PrefixText");
	if ( prefixText ) then
		if ( prefixText:GetText() and money > 0 ) then
			prefixText:Show();
			copperButton:ClearAllPoints();
			copperButton:SetPoint("RIGHT", frameName.."PrefixText", "RIGHT", width, 0);
			width = width + prefixText:GetWidth();
		else
			prefixText:Hide();
		end
	end
	local suffixText = getglobal(frameName.."SuffixText");
	if ( suffixText ) then
		if ( suffixText:GetText() and money > 0 ) then
			suffixText:Show();
			suffixText:ClearAllPoints();
			suffixText:SetPoint("LEFT", frameName.."CopperButton", "RIGHT", 0, 0);
			width = width + suffixText:GetWidth();
		else
			suffixText:Hide();
		end
	end

	frame:SetWidth(width);
end

function RefreshMoneyFrame(frameName, money, small, collapse, showSmallerCoins)
	--[[
	local gold = floor(money / (COPPER_PER_SILVER * SILVER_PER_GOLD));
	local silver = floor((money - (gold * COPPER_PER_SILVER * SILVER_PER_GOLD)) / COPPER_PER_SILVER);
	local copper = mod(money, COPPER_PER_SILVER);

	local goldButton = getglobal(frameName.."GoldButton");
	local silverButton = getglobal(frameName.."SilverButton");
	local copperButton = getglobal(frameName.."CopperButton");

	local iconWidth = MONEY_ICON_WIDTH;
	local spacing = MONEY_BUTTON_SPACING;
	if ( small > 0 ) then
		iconWidth = MONEY_ICON_WIDTH_SMALL;
		spacing = MONEY_BUTTON_SPACING_SMALL;
	end

	goldButton:SetText(gold);
	goldButton:SetWidth(goldButton:GetTextWidth() + iconWidth);
	goldButton:Show();
	silverButton:SetText(silver);
	silverButton:SetWidth(silverButton:GetTextWidth() + iconWidth);
	silverButton:Show();
	copperButton:SetText(copper);
	copperButton:SetWidth(copperButton:GetTextWidth() + iconWidth);
	copperButton:Show();

	local frame = getglobal(frameName);
	frame.staticMoney = money;

	if ( collapse == 0 ) then
		return;
	end

	local width = 13;
	local showLowerDenominations;
	if ( gold > 0 ) then
		width = width + goldButton:GetWidth();
		if ( showSmallerCoins ) then
			showLowerDenominations = 1;
		end
	else
		goldButton:Hide();
	end

	if ( silver > 0 or showLowerDenominations ) then
		width = width + silverButton:GetWidth();
		goldButton:SetPoint("RIGHT", frameName.."SilverButton", "LEFT", spacing, 0);
		if ( goldButton:IsShown() ) then
			width = width - spacing;
		end
		if ( showSmallerCoins ) then
			showLowerDenominations = 1;
		end
	else
		silverButton:Hide();
		goldButton:SetPoint("RIGHT", frameName.."SilverButton",	"RIGHT", 0, 0);
	end

	-- Used if we're not showing lower denominations
	if ( copper > 0 or showLowerDenominations or showSmallerCoins == "Backpack") then
		width = width + copperButton:GetWidth();
		silverButton:SetPoint("RIGHT", frameName.."CopperButton", "LEFT", spacing, 0);
		if ( silverButton:IsShown() ) then
			width = width - spacing;
		end
	else
		copperButton:Hide();
		silverButton:SetPoint("RIGHT", frameName.."CopperButton", "RIGHT", 0, 0);
	end

	frame:SetWidth(width);

	]]
end

function SetMoneyFrameColor(frameName, r, g, b)
	if ( not getglobal(frameName) ) then
		return;
	end
	local goldButton = getglobal(frameName.."GoldButton");
	local silverButton = getglobal(frameName.."SilverButton");
	local copperButton = getglobal(frameName.."CopperButton");

	goldButton:SetTextColor(r, g, b);
	silverButton:SetTextColor(r, g, b);
	copperButton:SetTextColor(r, g, b);
end

function AltCurrencyFrame_Update(frameName, texture, cost)
	local iconWidth;
	local button = getglobal(frameName);
	local buttonTexture = getglobal(frameName.."Texture");
	button:SetText(cost);
	buttonTexture:SetTexture(texture);
	if ( button.pointType == HONOR_POINTS ) then
		iconWidth = 24;
		buttonTexture:SetPoint("LEFT", getglobal(frameName.."Text"), "RIGHT", -1, -6);
	else
		iconWidth = MONEY_ICON_WIDTH_SMALL;
		buttonTexture:SetPoint("LEFT", getglobal(frameName.."Text"), "RIGHT", 0, 0);
	end
	buttonTexture:SetWidth(iconWidth);
	buttonTexture:SetHeight(iconWidth);
	button:SetWidth(button:GetTextWidth() + MONEY_ICON_WIDTH_SMALL);
end

function GetDenominationsFromCopper(money)
	return GetCoinText(money, " ");
end
