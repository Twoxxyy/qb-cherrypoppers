## Description:
I re-wrote Zach's burgershot script and made this for a job with Cherry Poppers. I added alot more config options removed some unecessary code added new images, items and cleaned it up a bit. This uses Dons Ice Cream MLO but you can basically config everything to whatever location you want to use. Huge shoutout to him for original code. Feel free to make a pr or make whatever changes you want to it. I also included an add-on ice cream truck for everyone to use but you can use whatever vehicle you want in the config.

Original script: https://github.com/Zach488/qb-burgershot

## Dependencies:
QBCore Framework - https://github.com/qbcore-framework/qb-core

PolyZone - https://github.com/qbcore-framework/PolyZone

qb-target - https://github.com/qbcore-framework/qb-target

qb-input - https://github.com/qbcore-framework/qb-input

qb-menu - https://github.com/qbcore-framework/qb-menu

map - https://www.youtube.com/watch?v=TjWhEoEBh0c I dont think its available for purchase anymore so I included it in Put In Resources!

Vehicle - https://www.gta5-mods.com/paintjobs/ice-cream-van-cherry-popper-ice-cream-company Made it from a replace to an add-on
## IMPORTANT
Rename script from 'qb-cherrypoppers-main' to just 'qb-cherrypoppers'!!!

## INSTALLATION:
1.) Add the Vehicle and MLO thats in the "Put In Resources!" folder into your resources, dont forget to ensure them:
```css
ensure cherrypopper_MLO
ensure cherrypoppertruck
```
Once this is done feel free to delete the "Put In Resources!" folder

2.) Add the images thats in the "images" folder into @qb-inventory>html>images or @lj-inventory>html>images

3.) Insert into @qb-core/shared/items.lua
```lua
	--- Cherry Poppers
	--- Ingredients
	["cp-sugar"] 					 = {["name"] = "cp-sugar",						["label"] = "Sugar",					["weight"] = 125,		["type"] = "item",		["image"] = "sugar.png",				["unique"] = false,		["useable"] = false,	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A sweet, crystalline substance used to flavor food and drinks."},
	["cp-milk"] 					 = {["name"] = "cp-milk",						["label"] = "Milk",						["weight"] = 125,		["type"] = "item",		["image"] = "milk.png",					["unique"] = false,		["useable"] = false,	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A white liquid produced by mammals, rich in nutrients and commonly used as food."},
	["cp-strawberry"] 				 = {["name"] = "cp-strawberry",					["label"] = "Strawberry",				["weight"] = 125,		["type"] = "item",		["image"] = "strawberry.png",			["unique"] = false,		["useable"] = false,	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Small, red, juicy fruit with green leaves and a sweet, slightly tart flavor."},
	["cp-chocolate"] 				 = {["name"] = "cp-chocolate",					["label"] = "Chocolate",				["weight"] = 125,		["type"] = "item",		["image"] = "chocolate.png",			["unique"] = false,		["useable"] = false,	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A sweet, rich, brown food made from cocoa beans, often used in desserts and candy."},
	["cp-vanilla"] 					 = {["name"] = "cp-vanilla",					["label"] = "Vanilla",					["weight"] = 125,		["type"] = "item",		["image"] = "vanilla.png",				["unique"] = false,		["useable"] = false,	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A sweet, fragrant flavoring made from orchid seeds, commonly used in desserts and baking."},
	["cp-cup"] 						 = {["name"] = "cp-cup",						["label"] = "Cup",						["weight"] = 125,		["type"] = "item",		["image"] = "cup.png",					["unique"] = false,		["useable"] = false,	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Tall cp-cup with a lid, filled with blended fruits and/or ice cream for a sweet drink."},
	["cp-icecreamcone"] 			 = {["name"] = "cp-icecreamcone",				["label"] = "Ice Cream Cone",			["weight"] = 125,		["type"] = "item",		["image"] = "cone.png",					["unique"] = false,		["useable"] = false,	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Crispy cone filled with a scoop or two of creamy, frozen dessert."},
	["cp-icecreampack"] 			 = {["name"] = "cp-icecreampack",				["label"] = "Ice Cream Pack",			["weight"] = 350,		["type"] = "item",		["image"] = "icecream_pack.png",		["unique"] = false,		["useable"] = true,		["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A box containing every flavor of cone and a toy!"},
	
	--- Food
	["cp-vanillacone"] 				 = {["name"] = "cp-vanillacone",				["label"] = "Vanilla Cone",				["weight"] = 250,		["type"] = "item",		["image"] = "vanilla_icecream.png",		["unique"] = false,		["useable"] = true,		["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A crispy cone filled with creamy, sweet vanilla-flavored ice cream."},
	["cp-chocolatecone"] 			 = {["name"] = "cp-chocolatecone",				["label"] = "Chocolate Cone",			["weight"] = 250,		["type"] = "item",		["image"] = "chocolate_icecream.png",	["unique"] = false,		["useable"] = true,		["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A crispy cone filled with creamy, rich chocolate-flavored ice cream, made with cocoa."},
	["cp-strawberrycone"] 			 = {["name"] = "cp-strawberrycone",				["label"] = "Strawberry Cone",			["weight"] = 250,		["type"] = "item",		["image"] = "strawberry_icecream.png",	["unique"] = false,		["useable"] = true,		["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A crispy cone filled with creamy, sweet strawberry-flavored ice cream, with real strawberry pieces."},
	["cp-strawberryshake"] 			 = {["name"] = "cp-strawberryshake",			["label"] = "Strawberry Shake",			["weight"] = 125,		["type"] = "item",		["image"] = "strawberry_shake.png",		["unique"] = false,		["useable"] = true,		["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Thick, sweet, and fruity with a creamy texture and pink color."},
	["cp-vanillashake"] 			 = {["name"] = "cp-vanillashake",				["label"] = "Vanilla Shake",			["weight"] = 125,		["type"] = "item",		["image"] = "vanilla_shake.png",		["unique"] = false,		["useable"] = true,		["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Smooth, creamy, and mildly sweet with a classic cp-vanilla flavor."},
	["cp-chocolateshake"] 			 = {["name"] = "cp-chocolateshake",				["label"] = "Chocolate Shake",			["weight"] = 125,		["type"] = "item",		["image"] = "chocolate_shake.png",		["unique"] = false,		["useable"] = true,		["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Rich, indulgent, and velvety with a deep cocoa flavor and brown hue."},
	
	--- Toys
	["strawberryplushy"] 			 = {["name"] = "strawberryplushy",				["label"] = "Strawberry Plushy",		["weight"] = 100,		["type"] = "item",		["image"] = "strawberryplushy.png",		["unique"] = false,		["useable"] = false,	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A toy of the Notorious BIG worth some $$ maybe"},
	["chocolateplushy"]				 = {["name"] = "chocolateplushy",				["label"] = "Chocolate Plushy",			["weight"] = 100,		["type"] = "item",		["image"] = "chocolateplushy.png",		["unique"] = false,		["useable"] = false,	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A rare golden toy of the Notorious BIG worth some $$ maybe"},
	["cp-coupon10"] 				 = {["name"] = "cp-coupon10",					["label"] = "10% Coupon",				["weight"] = 5,			["type"] = "item",		["image"] = "coupon_10.png",			["unique"] = false,		["useable"] = false,	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "a 10% coupon for Cherry Poppers!"},
	["cp-coupon15"] 				 = {["name"] = "cp-coupon15",					["label"] = "15% Coupon",				["weight"] = 5,			["type"] = "item",		["image"] = "coupon_15.png",			["unique"] = false,		["useable"] = false,	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "a 15% coupon for Cherry Poppers!"},
	["cp-coupon25"] 				 = {["name"] = "cp-coupon25", 					["label"] = "25% Coupon", 				["weight"] = 5, 		["type"] = "item", 		["image"] = "coupon_25.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "a 25% coupon for Cherry Poppers!"},
```

4.) Insert into @qb-core/shared/jobs.lua 
```lua
    ["cherrypoppers"] = {
		label = "Cherry Poppers",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = { name = "Trainee", payment = 50 },
            ['1'] = { name = "Employee", payment = 75 },
            ['3'] = { name = "Manager", payment = 125 },
            ['4'] = { name = "CEO", isboss = true, bankAuth = true, payment = 150 },
        },
	},	
```
## If you use jim-consumable skip to #7.)
5.) Insert into @qb-smallresources/server/consumables.lua
```lua
----------- / Cherry Poppers
--Food
QBCore.Functions.CreateUseableItem("cp-chocolateshake", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("cp-vanillashake", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("cp-strawberryshake", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("cp-vanillacone", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("cp-strawberrycone", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("cp-chocolatecone", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", source, item.name)
    end
end)
```

6.) Insert into @qb-smallresources/config.lua under Config.ConsumablesEat
```lua
    -- Cherry Poppers 
    ["cp-vanillacone"] = math.random(35, 54),
    ["cp-chocolatecone"] = math.random(35, 54),
    ["cp-strawberrycone"] = math.random(35, 54),
    ["cp-chocolateshake"] = math.random(40, 50),
    ["cp-vanillashake"] = math.random(40, 50),
    ["cp-strawberryshake"] = math.random(40, 50),
```

-- This step is only done if using jim-consumables
7.) Add the icecream-proppack that is inside 'Put Me In Resources!' the folder into your resources, remember to ensure it!
```css
ensure icecream-proppack
```

8.) Add this code to @jim-consumables>Consumables
```lua
		["cp-chocolateshake"] = { 	emote = "drink", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), thirst = math.random(10,20), }},
		["cp-vanillashake"] = { 	emote = "drink", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), thirst = math.random(10,20), }},
		["cp-strawberryshake"] = { 	emote = "drink", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), thirst = math.random(10,20), }},
		["cp-vanillacone"] = { 		emote = "vanillaicecream", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), thirst = math.random(5,10), }},
		["cp-strawberrycone"] = { 	emote = "strawberryicecream", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), thirst = math.random(5,10), }},
		["cp-chocolatecone"] = { 	emote = "chocolateicecream", 	canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", stats = { hunger = math.random(10,20), thirst = math.random(5,10), }},
```

9.) Add this code into @jim-consumables>Emotes
```lua
		-- Ice Cream Cones
		["chocolateicecream"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "Chocolate Ice Cream", AnimationOptions =
		{ Prop = 'prop_icecone_choco', PropBone = 18905, PropPlacement = {0.12, -0.02, 0.04, 300.0, 150.0},
			EmoteLoop = true, EmoteMoving = true, }},
		["vanillaicecream"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "Vanilla Ice Cream", AnimationOptions =
		{ Prop = 'prop_icecone_white', PropBone = 18905, PropPlacement = {0.12, -0.02, 0.04, 300.0, 150.0},
			EmoteLoop = true, EmoteMoving = true, }},
		["strawberryicecream"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", "Strawberry Ice Cream", AnimationOptions =
		{ Prop = 'prop_icecone_strawberry', PropBone = 18905, PropPlacement = {0.12, -0.02, 0.04, 300.0, 150.0},
			EmoteLoop = true, EmoteMoving = true, }},
```

## Thats it your done, enjoy!
