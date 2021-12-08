
local QBCore = exports['qb-core']:GetCoreObject()

local itemInfos = {}

RegisterNetEvent("inventory:client:Crafting", function(dropId)
	local crafting = {}
	crafting.label = "Crafting"
	crafting.items = GetThresholdItems()
	TriggerServerEvent("inventory:server:OpenInventory", "crafting", math.random(1, 99), crafting)
end)


RegisterNetEvent("inventory:client:WeaponAttachmentCrafting", function(dropId)
	local crafting = {}
	crafting.label = "Weapon Attachment Crafting"
	crafting.items = GetAttachmentThresholdItems()
	TriggerServerEvent("inventory:server:OpenInventory", "attachment_crafting", math.random(1, 99), crafting)
end)

RegisterNetEvent("inventory:client:WeaponCrafting", function(dropId)
	local crafting = {}
	crafting.label = "Weapon Crafting"
	crafting.items = GetWeaponThresholdItems()
	TriggerServerEvent("inventory:server:OpenInventory", "weapon_crafting", math.random(1, 99), crafting)
end)

function GetThresholdItems()
	ItemsToItemInfo()
	local items = {}
	for k, item in pairs(Config.CraftingItems) do
		if QBCore.Functions.GetPlayerData().metadata["craftingrep"] >= Config.CraftingItems[k].threshold then
			items[k] = Config.CraftingItems[k]
		end
	end
	return items
end
---------------------------------------------------------------------ATTACHMENTS
function SetupAttachmentItemsInfo()
	itemInfos = {
		[1] = {costs = QBCore.Shared.Items["metalscrap"]["label"] .. ": 140x</br>" .. QBCore.Shared.Items["steel"]["label"] .. ": 250x</br>" .. QBCore.Shared.Items["rubber"]["label"] .. ": 60x"},
		[2] = {costs = QBCore.Shared.Items["metalscrap"]["label"] .. ": 140x</br>" .. QBCore.Shared.Items["steel"]["label"] .. ": 250x</br>" .. QBCore.Shared.Items["rubber"]["label"] .. ": 60x"},
		[3] = {costs = QBCore.Shared.Items["metalscrap"]["label"] .. ": 140x</br>" .. QBCore.Shared.Items["steel"]["label"] .. ": 250x</br>" .. QBCore.Shared.Items["rubber"]["label"] .. ": 60x"},
		[4] = {costs = QBCore.Shared.Items["metalscrap"]["label"] .. ": 140x</br>" .. QBCore.Shared.Items["steel"]["label"] .. ": 250x</br>" .. QBCore.Shared.Items["rubber"]["label"] .. ": 60x"},
		[5] = {costs = QBCore.Shared.Items["metalscrap"]["label"] .. ": 140x</br>" .. QBCore.Shared.Items["steel"]["label"] .. ": 250x</br>" .. QBCore.Shared.Items["rubber"]["label"] .. ": 60x"},
		[6] = {costs = QBCore.Shared.Items["metalscrap"]["label"] .. ": 140x</br>" .. QBCore.Shared.Items["steel"]["label"] .. ": 250x</br>" .. QBCore.Shared.Items["rubber"]["label"] .. ": 60x"},
		[7] = {costs = QBCore.Shared.Items["metalscrap"]["label"] .. ": 140x</br>" .. QBCore.Shared.Items["steel"]["label"] .. ": 250x</br>" .. QBCore.Shared.Items["rubber"]["label"] .. ": 60x"},
		[8] = {costs = QBCore.Shared.Items["metalscrap"]["label"] .. ": 140x</br>" .. QBCore.Shared.Items["steel"]["label"] .. ": 250x</br>" .. QBCore.Shared.Items["rubber"]["label"] .. ": 60x"},
		[9] = {costs = QBCore.Shared.Items["metalscrap"]["label"] .. ": 140x</br>" .. QBCore.Shared.Items["steel"]["label"] .. ": 250x</br>" .. QBCore.Shared.Items["rubber"]["label"] .. ": 60x"},
		[10] = {costs = QBCore.Shared.Items["metalscrap"]["label"] .. ": 140x</br>" .. QBCore.Shared.Items["steel"]["label"] .. ": 250x</br>" .. QBCore.Shared.Items["rubber"]["label"] .. ": 60x"},
		[11] = {costs = QBCore.Shared.Items["metalscrap"]["label"] .. ": 140x</br>" .. QBCore.Shared.Items["steel"]["label"] .. ": 250x</br>" .. QBCore.Shared.Items["rubber"]["label"] .. ": 60x"},

	}

	local items = {}
	for k, item in pairs(Config.AttachmentCrafting["items"]) do
		local itemInfo = QBCore.Shared.Items[item.name:lower()]
		items[item.slot] = {
			name = itemInfo["name"],
			amount = tonumber(item.amount),
			info = itemInfos[item.slot],
			label = itemInfo["label"],
			description = itemInfo["description"] ~= nil and itemInfo["description"] or "",
			weight = itemInfo["weight"], 
			type = itemInfo["type"], 
			unique = itemInfo["unique"], 
			useable = itemInfo["useable"], 
			image = itemInfo["image"],
			slot = item.slot,
			costs = item.costs,
			threshold = item.threshold,
			points = item.points,
		}
	end
	Config.AttachmentCrafting["items"] = items
end

function GetAttachmentThresholdItems()
	SetupAttachmentItemsInfo()
	local items = {}
	for k, item in pairs(Config.AttachmentCrafting["items"]) do
		if QBCore.Functions.GetPlayerData().metadata["attachmentcraftingrep"] >= Config.AttachmentCrafting["items"][k].threshold then
			items[k] = Config.AttachmentCrafting["items"][k]
		end
	end
	return items
end

---------------------------------------------------------------------ITEMS

function ItemsToItemInfo()
	itemInfos = {
		[1] = {costs = QBCore.Shared.Items["plastic"]["label"] .. ": 32x</br>" .. QBCore.Shared.Items["metalscrap"]["label"] .. ": 32x "},
		[2] = {costs = QBCore.Shared.Items["plastic"]["label"] .. ": 32x</br>" .. QBCore.Shared.Items["metalscrap"]["label"] .. ": 32x "},
		[3] = {costs = QBCore.Shared.Items["plastic"]["label"] .. ": 32x</br>" .. QBCore.Shared.Items["metalscrap"]["label"] .. ": 32x "},
		[4] = {costs = QBCore.Shared.Items["plastic"]["label"] .. ": 32x</br>" .. QBCore.Shared.Items["metalscrap"]["label"] .. ": 32x "},
		[5] = {costs = QBCore.Shared.Items["plastic"]["label"] .. ": 32x</br>" .. QBCore.Shared.Items["metalscrap"]["label"] .. ": 32x "},
	}

	local items = {}
	for k, item in pairs(Config.CraftingItems) do
		local itemInfo = QBCore.Shared.Items[item.name:lower()]
		items[item.slot] = {
			name = itemInfo["name"],
			amount = tonumber(item.amount),
			info = itemInfos[item.slot],
			label = itemInfo["label"],
			description = itemInfo["description"] ~= nil and itemInfo["description"] or "",
			weight = itemInfo["weight"], 
			type = itemInfo["type"], 
			unique = itemInfo["unique"], 
			useable = itemInfo["useable"], 
			image = itemInfo["image"],
			slot = item.slot,
			costs = item.costs,
			threshold = item.threshold,
			points = item.points,
		}
	end
	Config.CraftingItems = items
end

local toolBoxModels = {
    `prop_toolchest_05`,
    `prop_tool_bench02_ld`,
    `prop_tool_bench02`,
    `prop_toolchest_02`,
    `prop_toolchest_03`,
    `prop_toolchest_03_l2`,
    `prop_toolchest_05`,
    `prop_toolchest_04`,
}
exports['qb-target']:AddTargetModel(toolBoxModels, {
		options = {
			{
				event = "inventory:client:WeaponAttachmentCrafting",
				icon = "fas fa-wrench",
				label = "Weapon Attachment Crafting", 
			},
			{
				event = "inventory:client:Crafting",
				icon = "fas fa-wrench",
				label = "Item Crafting", 
			},
			-- {
			-- 	event = "inventory:client:WeaponCrafting",
			-- 	icon = "fas fa-wrench",
			-- 	label = "Weapon Crafting", 
			-- },
		},
    distance = 1.0
})

