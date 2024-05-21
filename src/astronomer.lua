--/// Astronomer - Roblox Studio Plugin
--// Made by Horizonix Studios

--// Get Services
local httpService = game:GetService('HttpService');

--// Get Modules
local interpreter = require(script.resources.interpreter);
local tweener = require(script.resources.tweener);

local UserInterface = script.UI;

print(UserInterface:GetDescendants())

tweener:SetButtonDefaultTweens(UserInterface.Background.Bar.1_VisualsButton);
tweener:SetButtonDefaultTweens(UserInterface.Background.Bar.2_LocalPlayerButton);
tweener:SetButtonDefaultTweens(UserInterface.Background.Bar.3_SettingsButton);
tweener:SetButtonDefaultTweens(UserInterface.Background.Bar.4_AboutButton);

tweener:SetButtonDefaultTweens(UserInterface.Background.LocalPlayerSettings.SpeedBoost);
