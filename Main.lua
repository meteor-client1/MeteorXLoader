--[[

FISCH Version 0.2 [ Release ]
Discord : https://discord.gg/dgC2S7UaBk

]]--




-- { Open / Close } --
local ToggleUI = Instance.new("ScreenGui")
local ToggleButton = Instance.new("TextButton")
local BackgroundImage = Instance.new("ImageLabel")
local ToggleButtonHUI = Instance.new("UICorner")


ToggleUI.Name = "ToggleUI"
ToggleUI.Parent = game.CoreGui
ToggleUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling


ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = ToggleUI
ToggleButton.BackgroundColor3 = Color3.fromRGB(23, 212, 224)
ToggleButton.BackgroundTransparency = 1  -- Make background transparent
ToggleButton.BorderSizePixel = 0
ToggleButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ToggleButton.Size = UDim2.new(0, 50, 0, 50)
ToggleButton.Font = Enum.Font.SourceSans
ToggleButton.Text = ""  
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.TextSize = 14.000
ToggleButton.Draggable = true


BackgroundImage.Name = "BackgroundImage"
BackgroundImage.Parent = ToggleButton
BackgroundImage.BackgroundTransparency = 1
BackgroundImage.Size = UDim2.new(1, 0, 1, 0)  -- Cover the entire ToggleButton
BackgroundImage.Image = "rbxassetid://107584891022178"  -- Update the image ID
BackgroundImage.ImageColor3 = Color3.fromRGB(255, 255, 255)  -- Set image color if needed


ToggleButtonHUI.Parent = ToggleButton
ToggleButtonHUI.CornerRadius = UDim.new(0, 10)  -- Adjust corner radius if needed


local BackgroundImageHUI = Instance.new("UICorner")
BackgroundImageHUI.CornerRadius = UDim.new(0, 10)  -- Same radius as ToggleButton
BackgroundImageHUI.Parent = BackgroundImage


ToggleButton.MouseButton1Click:Connect(function()
    
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.RightShift, false, game)  -- Change KeyCode Here
end)
















-- { Library } -- 
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/XLunarHub/LunarHub/refs/heads/main/LibMain.lua"))()
local Wait = library.subs.Wait -- Only returns if the GUI has not been terminated. For 'while Wait() do' loops





-- { Window } --
local PepsisWorld = library:CreateWindow({
Name = "Lunar Hub | Fisch",
Themeable = {}
})



-- { Main } --
local MainTab = PepsisWorld:CreateTab({
Name = "Main"
})


-- { Main Tab } --

local ReelModeList = {
"Faster",
"Normal"
};
-- {Farm Tab } --
local Farming = MainTab:CreateSection({
Name = "Farm 🐟"
})

Farming:AddToggle({
Name = "Auto Farm",
Callback = print
})

Farming:AddDropdown({
Name = "Reel Mode",
List = ReelModeList,
CallBack = print
})






-- { ConfigAuto Tab } --
local ConfigAuto = MainTab:CreateSection({
Name = "Config Farm ⚙️"
})

ConfigAuto:AddToggle({
Name = "Auto Equip Rod",
CallBack = print
})

ConfigAuto:AddToggle({
Name = "Auto Cast",
CallBack = print
})

ConfigAuto:AddToggle({
Name = "Auto Shake",
CallBack = print
})

ConfigAuto:AddToggle({
Name = "Auto Reel",
CallBack = function(ReelFin)
if ReelFin then
_G.LLReelFinish = true
while _G.LLReelFinish do
wait()
local args = {
    [1] = 100,
    [2] = false
}

game:GetService("ReplicatedStorage").events.reelfinished:FireServer(unpack(args))
end
else
_G.LLReelFinish = false
while _G.LLReelFinish do
wait()
local args = {
    [1] = 100,
    [2] = false
}

game:GetService("ReplicatedStorage").events.reelfinished:FireServer(unpack(args))
end
end
end
})

ConfigAuto:AddToggle({
Name = "Auto Nuke",
CallBack = print
})






-- { Treasure Chest } --
local TreasureChest = MainTab:CreateSection({
Name = "TreasureChest 🗺"
})

TreasureChest:AddToggle({
Name = "Find Treasure Chest",
Callback = print
})

TreasureChest:AddToggle({
Name = "Fix Treasure Map",
CallBack = print
})





local MapBestiaryList = {
"Ocean",
"Snowcap",
"Ancient Isle",
"The Depths",
"Sunstone",
"Desolate Deep",
"Moosewood",
"Forsaken Shores",
"Terrapin",
"Brine Pool",
"Roslit",
"Ancient Archives",
"Vertigo",
"Mushgrove",
"Roslie Volcano",
"Keeper Altar"
};
-- { Bestiary } --
local Bestiary = MainTab:CreateSection({
Name = "Bestiary 📚"
})

Bestiary:AddDropdown({
Name = "Choose Map Bestiary",
List = MapBestiaryList,
CallBack = print
})

Bestiary:AddToggle({
Name = "Auto Bestiary",
CallBack = print
})





local BonesList = {
"Spine Bone",
"Nessie's Spine",
"Spine Blade",
"Crew Gill",
"Spined Fin",
"Fossil Fan",
"Ancient Serpent Skill",
"Ancient Serpent Spine",
"Shake Fang",
"Barracuda's Spine"
};
-- { Bones } --
local Bones = MainTab:CreateSection({
Name = "Bones 🦴",
Side = "Right"
})

Bones:AddDropdown({
Name = "Choose Bones",
List = BonesList,
CallBack = print
})

Bones:AddToggle({
Name = "Auto Find Bones",
CallBack = print
})






-- { Fragment / Meteor } --
local FraMete = MainTab:CreateSection({
Name = "Fragment 💎 / Meteor ☄️"
})

FraMete:AddToggle({
Name = "Auto Collect Fragment",
Callback = print
})

FraMete:AddToggle({
Name = "Auto Collect Meteor",
CallBack = print
})






-- { Rod } --
local Rods = MainTab:CreateSection({
Name = "Rod 🎣",
Side = "Right"
})

Rods:AddToggle({
Name = "Auto Magma Rod",
CallBack = print
})

Rods:AddToggle({
Name = "Auto Fungel Rod",
CallBack = print
})

Rods:AddToggle({
Name = "Auto Scurvy Rod",
CallBack = print
})

Rods:AddToggle({
Name = "Auto Kings Rod",
CallBack = print
})

Rods:AddToggle({
Name = "Auto Trident Rod",
CallBack = print
})

Rods:AddToggle({
Name = "Auto Relic Rod",
CallBack = print
})

Rods:AddToggle({
Name = "Auto Phoenix Rod",
CallBack = print
})













-- { Automatic } --

local Automatic = PepsisWorld:CreateTab({
Name = "Automatically"
})





-- { Crab Cage } --
local Crab = Automatic:CreateSection({
Name = "Crab Cage 🥽"
})

Crab:AddToggle({
Name = "Auto Buy Carb Cage",
CallBack = print
})

Crab:AddToggle({
Name = "Auto Place Carb Cage",
CallBack = print
})

Crab:AddToggle({
Name = "Auto Claim Crab Cage",
CallBack = print
})





local BaitList = {
"None",
"Begel",
"Maggot",
"Shrimp",
"Flakes",
"Insect",
"Night Shrimp",
"Weird Algae",
"Worm",
"Deep Coral",
"Super Flakes",
"Minnow",
"Shark Head",
"Magnet",
"Coral",
"Rapid Catcher",
"Fish Head",
"Squid"
};
-- { Bait } --
local Bait = Automatic:CreateSection({
Name = "Bait 🐟"
})

Bait:AddDropdown({
Name = "Choose Bait",
List = BaitList,
CallBack = print
})

Bait:AddButton({
Name = "Refresh Choose Bait",
CallBack = print
})

Bait:AddToggle({
Name = "Auto Equip Bait",
CallBack = print
})

Bait:AddToggle({
Name = "Auto Equip Random Bait",
CallBack = print
})

Bait:AddToggle({
Name = "Auto Buy Bait Crate",
CallBack = print
})






-- { Seller } --
local Seller = Automatic:CreateSection({
Name = "Seller 💸"
})

Seller:AddToggle({
Name = "Auto Sell All",
CallBack = print
})

Seller:AddToggle({
Name = "Auto Sell On Hand",
CallBack = print
})





local TotemList = {
"Aurora Totem",
"Smokescreen Totem",
"Windset Totem",
"Tempest Totem",
"Sundial Totem",
"Eclipse Totem",
"Meteor Totem"
};
-- { Totem } --
local Totem = Automatic:CreateSection({
Name = "Totem 🔮"
})

Totem:AddDropdown({
Name = "Choose Totem",
List = TotemList,
CallBack = print
})

Totem:AddToggle({
Name = "Auto Use Totem",
CallBack = print
})

Totem:AddToggle({
Name = "Auto Buy Totem",
CallBack = print
})






-- { Trade } --
local Trade = Automatic:CreateSection({
Name = "Trade 🧳",
Side = "Right"
})

Trade:AddDropdown({
Name = "Choose Player",
List = {"None"},
CallBack = print
})

Trade:AddButton({
Name = "Refresh Player",
CallBack = print
})

Trade:AddTextbox({
Name = "Give Fish Name",
Text = "Name Fish",
CallBack = print
})

Trade:AddToggle({
Name = "Auto Give To Player",
CallBack = print
})

Trade:AddToggle({
Name = "Auto Trade Player",
CallBack = print
})

Trade:AddToggle({
Name = "Auto Accept Trade",
CallBack = print
})





local EnchList = {
"Sea King",
"Swift",
"Long",
"Ghastly",
"Lucky",
"Divine",
"Mutated",
"Unbreakble",
"Steady",
"Blessed",
"Wormhold",
"Resilience",
"Breezed",
"Insight",
"Noir",
"Hasty",
"Quaility",
"Abyssal",
"Clever"
};
-- { Enchant Altar } --
local Ench = Automatic:CreateSection({
Name = "Enchant ✨",
Side = "Right"
})

Ench:AddDropdown({
Name = "Choose Enchant",
List = EnchList,
CallBack = print
})

Ench:AddToggle({
Name = "Auto Enchant",
CallBack = print
})





local MutatedList = {
"None",
"Aurora",
"Amber",
"Darkened",
"Forzen",
"Nuclear",
"Subspace",
"Midas",
"Greedy",
"Glossy",
"Scorched",
"Revitalized",
"Sunken",
"Solarblade",
"Albino",
"Purified",
"Seasonal",
"Mosaic",
"Fossilized",
"Silver",
"Atlantean",
"Sandy",
"Translucent",
"Electric",
"Sinister",
"Ghasty",
"Anomalous",
"Unsellable",
"Blesses",
"Hexed",
"Abyssal",
"Celestial",
"Mythical",
"Lunar",
"Negative"
}
-- { Appraise } ---
local Appra = Automatic:CreateSection({
Name = "Appraise ✨",
Side = "Right"
})

Appra:AddToggle({
Name = "Allow Use Mutation",
CallBack = print
})

Appra:AddDropdown({
Name = "Choose Mutation",
List = MutatedList,
CallBack = print
})

Appra:AddToggle({
Name = "Allow Use Weight",
CallBack = print
})

Appra:AddTextbox({
Name = "Weight",
Text = "Weight Here",
CallBack = print
})

Appra:AddToggle({
Name = "Allow Use Sparking",
CallBack = print
})

Appra:AddToggle({
Name = "Allow Use Shiny",
CallBack = print
})

Appra:AddTextbox({
Name = "Delay To Appraise",
Text = "1",
CallBack = print
})

Appra:AddToggle({
Name = "Auto Appraise",
CallBack = print
})














-- { Quest } --
local Quest = PepsisWorld:CreateTab({
Name = "Quest"
})






local Pierre = Quest:CreateSection({
Name = "Pierre"
})

Pierre:AddToggle({
Name = "Auto Complete Pierre",
CallBack = print
})





-- { Angler } --
local Angler = Quest:CreateSection({
Name = "Anglers",
Side = "Right"
})

Angler:AddToggle({
Name = "Auto Angler Quests",
CallBack = print
})






-- { Chiseler } --
local Chiseler = Quest:CreateSection({
Name = "Chiseler"
})

Chiseler:AddTextbox({
Name = "Fish Name",
Text = "Fish Name Here",
CallBack = print
})

Chiseler:AddToggle({
Name = "Auto Chiseler",
CallBack = print
})












-- { Shop } --

local Shop = PepsisWorld:CreateTab({
Name = "Shop"
})



local Shop1 = Shop:CreateSection({
Name = "Shop 1 🛒"
})

Shop1:AddTextbox({
Name = "Delay Buy",
Text = "1",
CallBack = print
})

Shop1:AddToggle({
Name = "Auto Buy Relic [11,000C$]",
CallBack = print
})

Shop1:AddToggle({
Name = "Auto Buy Lcuk [5,000C$]",
CallBack = print
})

Shop1:AddToggle({
Name = "Auto Buy Coral Geode [600C$]",
CallBack = print
})

Shop1:AddToggle({
Name = "Auto Buy Quaility Bait [525C$]",
CallBack = print
})






-- { Shop 2 } --
local Shop2 = Shop:CreateSection({
Name = "Shop 2 🛒"
})

Shop2:AddToggle({
Name = "Buy Plastic Rod [900C$]",
CallBack = print
})

Shop2:AddToggle({
Name = "Carbon Rod [2,000C$]",
CallBack = print
})

Shop2:AddToggle({
Name = "GPS [100C$]",
CallBack = print
})

Shop2:AddToggle({
Name = "Bait Crate [120C$]",
CallBack = print
})

Shop2:AddToggle({
Name = "Glider [1035C$]",
CallBack = print
})






-- { Shop 3 }
local Shop3 = Shop:CreateSection({
Name = "Shop 3 🛒",
Side = "Right"
})

Shop3:AddButton({
Name = "Buy Flimsy Rod",
CallBack = print
})

Shop3:AddButton({
Name = "Buy Training Rod",
CallBack = print
})

Shop3:AddButton({
Name = "Buy Plastic Rod",
CallBack = print
})

Shop3:AddButton({
Name = "Buy Carbon Rod",
CallBack = print
})

Shop3:AddButton({
Name = "Buy Long Rod",
CallBack = print
})

Shop3:AddButton({
Name = "Buy Steady Rod",
CallBack = print
})

Shop3:AddButton({
Name = "Buy Fortune Rod",
CallBack = print
})

Shop3:AddButton({
Name = "Buy Rapid Rod",
CallBack = print
})

Shop3:AddButton({
Name = "Buy Nocturnal Rod",
CallBack = print
})

Shop3:AddButton({
Name = "Buy Aurora Rod",
CallBack = print
})

Shop3:AddButton({
Name = "Buy Rod of The Depths",
CallBack = print
})

Shop3:AddButton({
Name = "Buy Magnet Rod",
CallBack = print
})

Shop3:AddButton({
Name = "Buy Kings Rod",
CallBack = print
})

Shop3:AddButton({
Name = "Buy Destiny Rod",
CallBack = print
})

Shop3:AddButton({
Name = "Buy Midas Rod",
CallBack = print
})

Shop3:AddButton({
Name = "Buy Mythical Rod",
CallBack = print
})

Shop3:AddButton({
Name = "Buy Reinforced Rod",
CallBack = print
})

Shop3:AddButton({
Name = "Buy Trident Rod",
CallBack = print
})

Shop3:AddButton({
Name = "Buy Scurvy Rod",
CallBack = print
})

Shop3:AddButton({
Name = "Buy Relic Rod",
CallBack = print
})














-- { Teleport } --
local TeleportTab = PepsisWorld:CreateTab({
Name = "Teleport"
})



local ZoneList = {
"None"
};
-- { Teleport Zone } --
local TeleZone = TeleportTab:CreateSection({
Name = "Teleport Zones ⚡️"
})

TeleZone:AddDropdown({
Name = "Choose Zone",
List = ZoneList,
CallBack = print
})

TeleZone:AddButton({
Name = "Refresh Zone",
CallBack = print
})

TeleZone:AddButton({
Name = "Teleport Zone",
CallBack = print
})





local IslandList = {
"Deepshop",
"Depthsmazeed",
"Trident",
"Terrapin",
"Forsaken",
"TheDepthsobby",
"Altar",
"LostIslandCave",
"Anciect",
"Arch",
"Moosewood",
"Mod",
"Swamp",
"Uncharted",
"Sunstone",
"MirrorRoom",
"Deep",
"TheDepthsentrance",
"Archive",
"Wilson",
"Brine Pool",
"Statue",
"TheDepthsMazeExit",
"Snowcap",
"AncientarArchives",
"Roslit",
"Executive",
"Snow",
"Volcano",
"Desolate",
"Mushgrove",
"drfin",
"AncientArchivesentrance",
"Keepers",
"TheDepths",
"Enchant",
"Vertigo",
"Spike",
"Crafting",
"Merlin"
};
-- { Teleport Island } --
local TeleIs = TeleportTab:CreateSection({
Name = "Teleport Islands ⚡️"
})

TeleIs:AddDropdown({
Name = "Choose Island",
List = IslandList,
CallBack = print
})

TeleIs:AddButton({
Name = "Teleport Island",
CallBack = print
})





local NPCList = {
"Mirror Area",
"Idle Fishing NPC Moosewood",
"Idle Fisging NPC Moosewood2",
"Pilgrime",
"Moosewood Shipwright",
"Arnold",
"Paul",
"Pierre",
"Henry",
"Appraiser",
"Marc Merchant",
"Inn Keeper",
"Moosewood Angler",
"Phineas",
"Lucas",
"Quiet Synph",
"Daisy",
"Laten Keeper",
"Mods Laten Keeper"
};
-- { Teleport NPC } --
local TeleNpc = TeleportTab:CreateSection({
Name = "Teleport NPCS ⚡️"
})

TeleNpc:AddDropDown({
Name = "Choose NPC",
List = NPCList,
CallBack = print
})

TeleNpc:AddButton({
Name = "Refresh NPC",
CallBack = print
})

TeleNpc:AddButton({
Name = "Teleport Npc",
CallBack = print
})





local ItemList = {
"Basic Diving Gear",
"GPS",
"Bait Crate",
"Glider"
};
-- { Items } --
local Items = TeleportTab:CreateSection({
Name = "Teleport Items ⚡️"
})

Items:AddDropDown({
Name = "Choose Item",
List = ItemList,
CallBack = print
})

Items:AddButton({
Name = "Refresh Item",
CallBack = print
})

Items:AddButton({
Name = "Teleport Item",
CallBack = print
})






-- { Teleport Totem } --
local TeleTotem = TeleportTab:CreateSection({
Name = "Teleport Totems ⚡️",
Side = "Right"
})

TeleTotem:AddDropDown({
Name = "Choose Totem",
List = TotemList,
CallBack = print
})

TeleTotem:AddButton({
Name = "Teleport Totem",
CallBack = print
})





local EventsList = {
"Isonade",
"FischFright24",
"Fischgiving",
"Whale Shark",
"Great White Shark",
"Great Hammerhead Shark",
"Megaloden Default",
"Megaloden Ancient",
"The Depths - Serpent"
};
-- { Teleport Event } --
local TeleEvent = TeleportTab:CreateSection({
Name = "Teleport Events ⚡️",
Side = "Right"
})

TeleEvent:AddDropDown({
Name = "Choose Event",
List = EventsList,
CallBack = print
})

TeleEvent:AddButton({
Name = "Teleport Event",
CallBack = print
})






-- { Teleport Other } --
local TeleOther = TeleportTab:CreateSection({
Name = "Teleport Other ⚡️",
Side = "Right"
})

TeleOther:AddButton({
Name = "Teleport Safe Whirlpool",
CallBack = print
})

TeleOther:AddButton({
Name = "Teleport Trident Rod",
CallBack = print
})

TeleOther:AddButton({
Name = "Teleport Aurora Rod",
CallBack = print
})






-- { MiscTab } --
local MiscTab = PepsisWorld:CreateTab({
Name = "Misc"
})


-- { Fps Boost } --
local Fps = MiscTab:CreateSection({
Name = "FPS Boost 🔥"
})

Fps:AddToggle({
Name = "Reduce Lag",
CallBack = print
})

Fps:AddToggle({
Name = "Boost FPS",
CallBack = print
})

Fps:AddToggle({
Name = "White Screen",
CallBack = print
})

Fps:AddToggle({
Name = "Black Screen",
CallBack = print
})

Fps:AddToggle({
Name = "Hide Notification",
CallBack = print
})






-- { Character } --
local BobySet = MiscTab:CreateSection({
Name = "Character 👥"
})

BobySet:AddToggle({
Name = "Freeze Boby",
CallBack = print
})

BobySet:AddToggle({
Name = "Lock Position",
CallBack = print
})





-- { Water } --
local WaterSec = MiscTab:CreateSection({
Name = "Water💧",
Side = "Right"
})

WaterSec:AddToggle({
Name = "Walk On Water",
CallBack = print
})

WaterSec:AddToggle({
Name = "Infinite Oxygen",
CallBack = print
})

WaterSec:AddToggle({
Name = "Anti-Swim",
CallBack = print
})






-- { Blur / Fog } --
local BlrFog = MiscTab:CreateSection({
Name = "Blur / Fog 🌫",
Side = "Right"
})

BlrFog:AddToggle({
Name = "Remove Blur",
CallBack = print
})

BlrFog:AddToggle({
Name = "Remove Fog",
CallBack = print
})






-- { Unrender } --
local Unrender = MiscTab:CreateSection({
Name = "Unrender 🚫"
})

Unrender:AddToggle({
Name = "Unrender Crab Cage",
CallBack = print
})

Unrender:AddToggle({
Name = "Unrender Flag",
CallBack = print
})






-- { Server } --
local ServerSec = MiscTab:CreateSection({
Name = "Server 🖥",
Side = "Right"
})

ServerSec:AddButton({
Name = "HopServer",
CallBack = print
})

ServerSec:AddButton({
Name = "HopLowServer",
CallBack = print
})

ServerSec:AddButton({
Name = "Rejoin",
CallBack = print
})






local developerinfo = MiscTab:CreateSection({
Name = "Developer"
})

developerinfo:AddLabel({
Name = "Gui : Lunar Library 📕"
})

developerinfo:AddLabel({
Name = "Discord : C2S7UaBk 🪪"
})

developerinfo:AddLabel({
Name = "Thank For Support 🎉"
})