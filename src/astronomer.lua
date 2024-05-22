--/// Astronomer - Roblox Studio Plugin
--// Made by Horizonix Studios

--// Get Services
local httpService = game:GetService('HttpService');

--// Get Modules
local interpreter = require(script.resources.interpreter);
local tweener = require(script.resources.tweener);

local UserInterface = script.astronomerUIV1Free;

tweener:SetButtonDefaultTweens(UserInterface.Background.Bar['1_VisualsButton']);
tweener:SetButtonDefaultTweens(UserInterface.Background.Bar['2_LocalPlayerButton']);
tweener:SetButtonDefaultTweens(UserInterface.Background.Bar['3_SettingsButton']);
tweener:SetButtonDefaultTweens(UserInterface.Background.Bar['4_AboutButton']);

UserInterface.Background.Bar['1_VisualsButton'].MouseButton1Click:Connect(function()
	UserInterface.Background.VisualsSettings.Visible = true;
	UserInterface.Background.LocalPlayerSettings.Visible = false;
	UserInterface.Background.SettingsSettings.Visible = false;
	UserInterface.Background.AboutSettings.Visible = false;
end);
UserInterface.Background.Bar['2_LocalPlayerButton'].MouseButton1Click:Connect(function()
	UserInterface.Background.VisualsSettings.Visible = false;
	UserInterface.Background.LocalPlayerSettings.Visible = true;
	UserInterface.Background.SettingsSettings.Visible = false;
	UserInterface.Background.AboutSettings.Visible = false;
end);
UserInterface.Background.Bar['3_SettingsButton'].MouseButton1Click:Connect(function()
	UserInterface.Background.VisualsSettings.Visible = false;
	UserInterface.Background.LocalPlayerSettings.Visible = false;
	UserInterface.Background.SettingsSettings.Visible = true;
	UserInterface.Background.AboutSettings.Visible = false;
end);
UserInterface.Background.Bar['4_AboutButton'].MouseButton1Click:Connect(function()
	UserInterface.Background.VisualsSettings.Visible = false;
	UserInterface.Background.LocalPlayerSettings.Visible = false;
	UserInterface.Background.SettingsSettings.Visible = false;
	UserInterface.Background.AboutSettings.Visible = true;
end);

tweener:SetButtonDefaultTweens(UserInterface.Background.LocalPlayerSettings.SpeedBoost);

UserInterface.Background.LocalPlayerSettings.SpeedBoost.MouseButton1Click:Connect(function()
	if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 16 then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50;
	else
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16;
	end;
end);
