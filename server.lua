local Tunnel = module("AT_core", "lib/Tunnel")
local Proxy = module("AT_core", "lib/Proxy")

API = Proxy.getInterface("API")
cAPI = Tunnel.getInterface("API")


RegisterServerEvent("redemrp_fishing:AddFish")
AddEventHandler("redemrp_fishing:AddFish", function(name , weight)
	local _source = source
    local User = API.getUserFromSource(_source)
    local Character = User:getCharacter()
	local Inventory = Character:getInventory()

	print(name )

	Inventory:addItem(name, 1)

end)

function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end

RegisterServerEvent("redemrp_fishing:RemoveBait")
AddEventHandler("redemrp_fishing:RemoveBait", function(name)
	local _source = source
    local User = API.getUserFromSource(_source)
    local Character = User:getCharacter()
	local Inventory = Character:getInventory()

	Inventory:removeItem(-1, name, 1)	
end)

RegisterServerEvent("RegisterUsableItem:p_baitBread01x")
AddEventHandler("RegisterUsableItem:p_baitBread01x", function(source)
    local _source = source
	TriggerClientEvent("redemrp_fishing:UseBait", _source, "p_baitBread01x")
		
end)

RegisterServerEvent("RegisterUsableItem:p_baitCorn01x")
AddEventHandler("RegisterUsableItem:p_baitCorn01x", function(source)
    local _source = source
    TriggerClientEvent("redemrp_fishing:UseBait", _source, "p_baitCorn01x")
end)

RegisterServerEvent("RegisterUsableItem:p_baitCheese01x")
AddEventHandler("RegisterUsableItem:p_baitCheese01x", function(source)
    local _source = source
    TriggerClientEvent("redemrp_fishing:UseBait", _source, "p_baitCheese01x")
end)


RegisterServerEvent("RegisterUsableItem:p_finishedragonfly01x")
AddEventHandler("RegisterUsableItem:p_finishedragonfly01x", function(source)
    local _source = source
    TriggerClientEvent("redemrp_fishing:UseBait", _source, "p_finishedragonfly01x")
end)


RegisterServerEvent("RegisterUsableItem:p_baitCricket01x")
AddEventHandler("RegisterUsableItem:p_baitCricket01x", function(source)
    local _source = source
    TriggerClientEvent("redemrp_fishing:UseBait", _source, "p_baitCricket01x")
end)

RegisterServerEvent("RegisterUsableItem:p_FinisdFishlure01x")
AddEventHandler("RegisterUsableItem:p_FinisdFishlure01x", function(source)
    local _source = source
    TriggerClientEvent("redemrp_fishing:UseBait", _source, "p_FinisdFishlure01x")
end)

RegisterServerEvent("RegisterUsableItem:p_finishdcrawd01x")
AddEventHandler("RegisterUsableItem:p_finishdcrawd01x", function(source)
    local _source = source
    TriggerClientEvent("redemrp_fishing:UseBait", _source, "p_finishdcrawd01x")
end)
