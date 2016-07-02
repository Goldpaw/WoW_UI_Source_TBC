MacOptionsFrameCheckButtons = { };
MacOptionsFrameCheckButtons["MOVIE_RECORDING_ENABLE_GUI"] = { index = 1, cvar = "MovieRecordingGUI", tooltipText = MOVIE_RECORDING_ENABLE_GUI_TOOLTIP};
MacOptionsFrameCheckButtons["MOVIE_RECORDING_ENABLE_SOUND"] = { index = 2, cvar = "MovieRecordingSound", tooltipText = MOVIE_RECORDING_ENABLE_SOUND_TOOLTIP};
MacOptionsFrameCheckButtons["MOVIE_RECORDING_ENABLE_CURSOR"] = { index = 3, cvar = "MovieRecordingCursor", tooltipText = MOVIE_RECORDING_ENABLE_CURSOR_TOOLTIP};
MacOptionsFrameCheckButtons["MOVIE_RECORDING_ENABLE_ICON"] = { index = 4, cvar = "MovieRecordingIcon", tooltipText = MOVIE_RECORDING_ENABLE_ICON_TOOLTIP};
MacOptionsFrameCheckButtons["MOVIE_RECORDING_ENABLE_RECOVER"] = { index = 5, cvar = "MovieRecordingRecover", tooltipText = MOVIE_RECORDING_ENABLE_RECOVER_TOOLTIP};
MacOptionsFrameCheckButtons["MOVIE_RECORDING_ENABLE_COMPRESSION"] = { index = 6, cvar = "MovieRecordingAutoCompress", tooltipText = MOVIE_RECORDING_ENABLE_COMPRESSION_TOOLTIP};
MacOptionsFrameCheckButtons["ITUNES_SHOW_FEEDBACK"] = { index = 7, cvar = "iTunesRemoteFeedback", tooltipText = ITUNES_SHOW_FEEDBACK_TOOLTIP};
MacOptionsFrameCheckButtons["ITUNES_SHOW_ALL_TRACK_CHANGES"] = { index = 8, cvar = "iTunesTrackDisplay", tooltipText = ITUNES_SHOW_ALL_TRACK_CHANGES_TOOLTIP};

function MacOptionsFrame_Init()
	this:RegisterEvent("CVAR_UPDATE");
end

function MacOptionsFrame_OnEvent()
	if ( event == "CVAR_UPDATE" ) then
		local info = MacOptionsFrameCheckButtons[arg1];
		if ( info ) then
			info.value = arg2;
		end
	end
end

function MacOptionsFrame_DisableSlider(slider)
	local name = slider:GetName();
	local value = getglobal(name.."Value");
	getglobal(name.."Thumb"):Hide();
	getglobal(name.."Text"):SetVertexColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b);
	if ( value ) then
		value:SetVertexColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b);
	end
end

function MacOptionsFrame_Load()
	for index, value in pairs(MacOptionsFrameCheckButtons) do
		local button = getglobal("MacOptionsFrameCheckButton"..value.index);
		local string = getglobal("MacOptionsFrameCheckButton"..value.index.."Text");
		local checked = 0;
		checked = GetCVar(value.cvar);
		button:SetChecked(checked);
		
		string:SetText(getglobal(index));
		button.tooltipText = value.tooltipText;
		
		if(not MovieRecording_IsSupported() and (value.index < 7)) then
			MacOptionsFrame_DisableCheckBox(button);
		else
			MacOptionsFrame_EnableCheckBox(button);
		end
	end
	if(not MovieRecording_IsSupported()) then
		UIDropDownMenu_DisableDropDown(MacOptionsFrameResolutionDropDown);
		UIDropDownMenu_DisableDropDown(MacOptionsFrameFramerateDropDown);
		UIDropDownMenu_DisableDropDown(MacOptionsFrameCodecDropDown);
		MacOptionsFrame_DisableSlider(MacOptionsFrameQualitySlider);
		MacOptionsButtonCompress:Disable();
	else
		MacOptionsFrameQualitySlider:SetValue(GetCVar("MovieRecordingQuality"));
		if GetCVar("MovieRecordingGUI") then
			MacOptionsFrame_EnableCheckBox(getglobal("MacOptionsFrameCheckButton3"));
		else
			MacOptionsFrame_DisableCheckBox(getglobal("MacOptionsFrameCheckButton3"));
		end
	end
	if(not MovieRecording_IsCursorRecordingSupported()) then
		local button = getglobal("MacOptionsFrameCheckButton3");
		button:SetChecked(0);
		MacOptionsFrame_DisableCheckBox(button);
	end
end

function MacOptionsFrame_Save()
	for index, value in pairs(MacOptionsFrameCheckButtons) do
		local button = getglobal("MacOptionsFrameCheckButton"..value.index);
		if ( button:GetChecked() ) then
			value.value = "1";
		else
			value.value = "0";
		end

		SetCVar(value.cvar, value.value, index);
	end
	
	local resolution, xIndex, width;
	resolution = UIDropDownMenu_GetSelectedValue(MacOptionsFrameResolutionDropDown);
	xIndex = strfind(resolution, "x");
	width = strsub(resolution, 1, xIndex-1);

	SetCVar("MovieRecordingWidth", width);
	SetCVar("MovieRecordingFramerate", UIDropDownMenu_GetSelectedValue(MacOptionsFrameFramerateDropDown));
	SetCVar("MovieRecordingCompression", UIDropDownMenu_GetSelectedValue(MacOptionsFrameCodecDropDown));

	SetCVar("MovieRecordingQuality", MacOptionsFrameQualitySlider:GetValue());
end

function MacOptionsFrame_Cancel()
	PlaySound("gsTitleOptionExit");
	HideUIPanel(MacOptionsFrame);
end

function MacOptionsFrameResolutionDropDown_OnLoad()
	local ratio, width;
	
	UIDropDownMenu_Initialize(this, MacOptionsFrameResolutionDropDown_Initialize);
	
	ratio = MovieRecording_GetAspectRatio();
	width = min(GetCVar("MovieRecordingWidth"), MovieRecording_GetViewportWidth());
	UIDropDownMenu_SetSelectedValue(this, width.."x"..floor(width*ratio), 1);
	UIDropDownMenu_SetWidth(110, MacOptionsFrameResolutionDropDown);
end

function MacOptionsFrameResolutionDropDown_Initialize()
	local info = UIDropDownMenu_CreateInfo();
	local width, height, ratio, halfWidth, quarterWidth;
		
	ratio = MovieRecording_GetAspectRatio();
	width = MovieRecording_GetViewportWidth();
	width = width - (width % 4);
	
	oldWidth = GetCVar("MovieRecordingWidth");
	oldWidth = oldWidth - (oldWidth % 4);
	
	info.text = width.."x"..floor(width*ratio);
	info.value = info.text;
	info.func = MacOptionsFrameResolutionButton_OnClick;
	info.checked = nil;
	info.tooltipTitle = MOVIE_RECORDING_FULL_RESOLUTION;
	UIDropDownMenu_AddButton(info);
	info.tooltipTitle = nil;
	
	halfWidth = width / 2;
	halfWidth = halfWidth - (halfWidth % 4);
	quarterWidth = width / 4;
	quarterWidth = quarterWidth - (quarterWidth % 4);
	
	local resWidth = { 4096, 2560, 1920, 1600, 1344, 1280, 1024, 960, 800, 640, 320 };
	table.insert(resWidth, tonumber(oldWidth));
	if halfWidth > 320 then
		table.insert(resWidth, tonumber(halfWidth));
		if quarterWidth > 320 then
			table.insert(resWidth, tonumber(quarterWidth));
		end
	end
	function greater(a, b) return a > b end 
	table.sort(resWidth, greater);
	
	local lastWidth = width;
	for index, value in pairs(resWidth) do
		if value < width and value ~= lastWidth then
			height = floor(value * ratio);
			info.text = value.."x"..height;
			info.value = info.text;
			info.func = MacOptionsFrameResolutionButton_OnClick;
			info.checked = nil;
			if value == tonumber(halfWidth) then
				info.tooltipTitle = "Half Resolution";
			elseif value == tonumber(quarterWidth) then
				info.tooltipTitle = "Quarter Resolution";
			else
				info.tooltipTitle = nil;
			end
			UIDropDownMenu_AddButton(info);
			lastWidth = value;
		end
	end
end

function MacOptionsFrameResolutionButton_OnClick()
	UIDropDownMenu_SetSelectedValue(MacOptionsFrameResolutionDropDown, this.value);
	MacOptionsFrame_UpdateTime();
end

function MacOptionsFrameFramerateDropDown_OnLoad()
	UIDropDownMenu_Initialize(this, MacOptionsFrameFramerateDropDown_Initialize);
	UIDropDownMenu_SetSelectedValue(this, GetCVar("MovieRecordingFramerate"));
	UIDropDownMenu_SetWidth(110, MacOptionsFrameFramerateDropDown);
end

function MacOptionsFrameFramerateDropDown_Initialize()
	local info = UIDropDownMenu_CreateInfo();
	info.func = MacOptionsFrameFramerateDropDown_OnClick;
	info.checked = nil;

	info.text = MOVIE_RECORDING_FPS_HALF;
	info.value = "2";
	info.checked = nil;
	UIDropDownMenu_AddButton(info);

	info.text = MOVIE_RECORDING_FPS_THIRD;
	info.value = "3";
	info.checked = nil;
	UIDropDownMenu_AddButton(info);

	info.text = MOVIE_RECORDING_FPS_FOURTH;
	info.value = "4";
	info.checked = nil;
	UIDropDownMenu_AddButton(info);
	
	local fps = { "100", "90", "80", "70", "60", "50", "40", "30", "29.97", "25", "23.98", "20", "15", "10" };
	
	for index, value in pairs(fps) do
		info.text = value;
		info.value = info.text;
		info.checked = nil;
		UIDropDownMenu_AddButton(info);
	end
end

function MacOptionsFrameCodecDropDown_OnClick()
	UIDropDownMenu_SetSelectedValue(MacOptionsFrameCodecDropDown, this.value);
	MacOptionsFrame_UpdateTime();
end

function MacOptionsFrameCodecDropDown_OnLoad()
	UIDropDownMenu_Initialize(this, MacOptionsFrameCodecDropDown_Initialize);
	UIDropDownMenu_SetSelectedValue(this, tonumber(GetCVar("MovieRecordingCompression")));
	UIDropDownMenu_SetWidth(110, MacOptionsFrameCodecDropDown);
end

function MacOptionsFrameCodecDropDown_Initialize()
	local info = UIDropDownMenu_CreateInfo();
	info.func = MacOptionsFrameCodecDropDown_OnClick;
	info.checked = nil;
	
	local codecType = { 1835692129, 
						1635148593, 
						1768124260,
						1836070006 };
	local codecName = { MOVIE_RECORDING_MJPEG,
						MOVIE_RECORDING_H264,
						MOVIE_RECORDING_AIC,
						MOVIE_RECORDING_MPEG4 };
	local codecTooltip = { 	MOVIE_RECORDING_MJPEG_TOOLTIP,
							MOVIE_RECORDING_H264_TOOLTIP,
							MOVIE_RECORDING_AIC_TOOLTIP,
							MOVIE_RECORDING_MPEG4_TOOLTIP };
						
	for index, value in pairs(codecType) do
		if ( MovieRecording_IsCodecSupported(value)) then
			info.text = codecName[index];
			info.value = value;
			info.checked = nil;
			info.tooltipTitle = codecName[index];
			info.tooltipText = codecTooltip[index];
			UIDropDownMenu_AddButton(info);
		end
	end
end

function MacOptionsFrameFramerateDropDown_OnClick()
	UIDropDownMenu_SetSelectedValue(MacOptionsFrameFramerateDropDown, this.value);
	MacOptionsFrame_UpdateTime();
end

function MacOptionsFrame_SetDefaults()
	local checkButton, slider;
	for index, value in pairs(MacOptionsFrameCheckButtons) do
		checkButton = getglobal("MacOptionsFrameCheckButton"..value.index);
		checkButton:SetChecked(GetCVarDefault(value.cvar));
	end
	MacOptionsFrame_EnableCheckBox(getglobal("MacOptionsFrameCheckButton3"));

	UIDropDownMenu_Initialize(MacOptionsFrameFramerateDropDown, MacOptionsFrameFramerateDropDown_Initialize);
	UIDropDownMenu_SetSelectedValue(MacOptionsFrameFramerateDropDown, "29.97");
	UIDropDownMenu_Initialize(MacOptionsFrameCodecDropDown, MacOptionsFrameCodecDropDown_Initialize);
	UIDropDownMenu_SetSelectedValue(MacOptionsFrameCodecDropDown, 1635148593);
	UIDropDownMenu_Initialize(MacOptionsFrameResolutionDropDown, MacOptionsFrameResolutionDropDown_Initialize);
	local ratio = MovieRecording_GetAspectRatio();
	UIDropDownMenu_SetSelectedValue(MacOptionsFrameResolutionDropDown, "640x"..floor(640*ratio));
	
	MacOptionsFrameQualitySlider:SetValue(2);
	MacOptionsFrame_UpdateTime();
end

function MacOptionsFrame_DisableCheckBox(checkBox)
	--checkBox:SetChecked(0);
	checkBox:Disable();
	getglobal(checkBox:GetName().."Text"):SetTextColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b);
end

function MacOptionsFrame_EnableCheckBox(checkBox, setChecked, checked, isWhite)
	if ( setChecked ) then
		checkBox:SetChecked(checked);
	end
	checkBox:Enable();
	if ( isWhite ) then
		getglobal(checkBox:GetName().."Text"):SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
	else
		getglobal(checkBox:GetName().."Text"):SetTextColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b);
	end
	
end

function PlayClickSound()
	if ( this:GetChecked() ) then
		PlaySound("igMainMenuOptionCheckBoxOn");
	else
		PlaySound("igMainMenuOptionCheckBoxOff");
	end
end

function MacOptionsFrame_UpdateTime()
	local resolution, framerate, xIndex, width, sound;
	framerate = UIDropDownMenu_GetSelectedValue(MacOptionsFrameFramerateDropDown);
	if tonumber(framerate) >= 10 then
		resolution = UIDropDownMenu_GetSelectedValue(MacOptionsFrameResolutionDropDown);
		xIndex = strfind(resolution, "x");
		width = tonumber(strsub(resolution, 1, xIndex-1));
		if(MacOptionsFrameCheckButton2:GetChecked()) then
			sound = 1;
		else
			sound = 0;
		end
		
		MacOptionsFrameText2:SetText(MovieRecording_MaxLength(	tonumber(width), 
																tonumber(framerate),
																tonumber(sound)));

		local dataRate = MovieRecording_DataRate(	tonumber(width), 
													tonumber(UIDropDownMenu_GetSelectedValue(MacOptionsFrameFramerateDropDown)),
													tonumber(sound))
		MacOptionsFrameText4:SetText(dataRate);
		MovieRecordingFrameTextTooltip1:SetWidth(MacOptionsFrameText1:GetWidth() + MacOptionsFrameText2:GetWidth() + 2);
		MovieRecordingFrameTextTooltip2:SetWidth(MacOptionsFrameText3:GetWidth() + MacOptionsFrameText4:GetWidth() + 2);
	else
		MacOptionsFrameText2:SetText("");
		MacOptionsFrameText4:SetText("");
	end
end

function MacOptionsCancelFrame_OnShow()
	MacOptionsCancelFrameFileName:SetText(MovieRecording_GetMovieFullPath());

	local fileNameWidth = MacOptionsCancelFrameFileName:GetWidth();
	local questionWidth = MacOptionsCancelFrameQuestion:GetWidth();
	local frameWidth = math.min(600, math.max(fileNameWidth, questionWidth));

	MacOptionsCancelFrame:SetWidth(frameWidth + 40);
	MacOptionsCancelFrameFileName:SetWidth(frameWidth);
	MacOptionsCancelFrameQuestion:SetWidth(frameWidth); 
end

function MacOptionsCompressFrame_OnShow()
	local fileNameWidth = MacOptionsCompressFrameFileName:GetWidth();
	local frameWidth = math.max(350, fileNameWidth);

	MacOptionsCompressFrame:SetWidth(frameWidth + 40);
	MacOptionsCompressFrameFileName:SetWidth(frameWidth);
end

