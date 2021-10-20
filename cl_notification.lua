-- EXMAPLE USAGE:

-- https://imgur.com/a/zx3jWt4
-- TriggerEvent('qb_notifi:NotifyLeft', "first text", "second text", "generic_textures", "tick", 4000)
-- https://imgur.com/a/28MmoRS
-- TriggerEvent('qb_notifi:Tip', "your text", 4000)
-- https://imgur.com/a/8sac0gx
-- TriggerEvent('qb_notifi:NotifyTop', "your text", "TOWN_ARMADILLO", 4000)
-- https://imgur.com/a/0f04o7D
-- TriggerEvent('qb_notifi:ShowSimpleRightText', "your text",  4000)
-- https://imgur.com/a/4DxC9wE
-- TriggerEvent('qb_notifi:ShowObjective', "your text", 4000)
-- https://imgur.com/a/LRhyOoI
-- TriggerEvent('qb_notifi:ShowTopNotification', "your text", "your text", 4000)
-- https://imgur.com/a/wYheY78
-- TriggerEvent('qb_notifi:ShowAdvancedRightNotification', "your text", "generic_textures" , "tick" , "COLOR_PURE_WHITE", 4000)
-- https://imgur.com/a/JMNPlgo
-- TriggerEvent('qb_notifi:ShowBasicTopNotification', "your text", 4000)
-- https://imgur.com/a/DSCcwry
-- TriggerEvent('qb_notifi:ShowSimpleCenterText', "your text", 4000)

RegisterNetEvent('qb_notifi:NotifyLeft')
AddEventHandler('qb_notifi:NotifyLeft', function(firsttext, secondtext, dict, icon, duration)
    local _dict = dict
    local _icon = icon
    if not LoadTexture(_dict) then
        _dict = "generic_textures"
        LoadTexture(_dict)
        _icon = "tick"
    end
    exports.qb_notifi:ShowAdvancedNotification(tostring(firsttext), tostring(secondtext), tostring(_dict), tostring(_icon), tonumber(duration))
end)

RegisterNetEvent('qb_notifi:Tip')
AddEventHandler('qb_notifi:Tip', function(text, duration)
    exports.qb_notifi:ShowTooltip(tostring(text), tonumber(duration))
end)

RegisterNetEvent('qb_notifi:NotifyTop')
AddEventHandler('qb_notifi:NotifyTop', function(text, location, duration)
    exports.qb_notifi:ShowLocationNotification(tostring(text), tostring(location), tonumber(duration))
end)

RegisterNetEvent('qb_notifi:ShowSimpleRightText')
AddEventHandler('qb_notifi:ShowSimpleRightText', function(text, duration)
    exports.qb_notifi:ShowSimpleRightText(tostring(text), tonumber(duration))
end)

RegisterNetEvent('qb_notifi:ShowObjective')
AddEventHandler('qb_notifi:ShowObjective', function(text, duration)
    exports.qb_notifi:ShowObjective(tostring(text), tonumber(duration))
end)

RegisterNetEvent('qb_notifi:ShowTopNotification')
AddEventHandler('qb_notifi:ShowTopNotification', function(tittle, subtitle, duration)
    exports.qb_notifi:ShowTopNotification(tostring(tittle), tostring(subtitle), tonumber(duration))
end)

RegisterNetEvent('qb_notifi:ShowAdvancedRightNotification')
AddEventHandler('qb_notifi:ShowAdvancedRightNotification', function(text, dict, icon, text_color, duration)
    local _dict = dict
    local _icon = icon
    if not LoadTexture(_dict) then
        _dict = "generic_textures"
        LoadTexture(_dict)
        _icon = "tick"
    end
    exports.qb_notifi:ShowAdvancedRightNotification(tostring(text), tostring(_dict), tostring(_icon), tostring(text_color), tonumber(duration))
end)

RegisterNetEvent('qb_notifi:ShowBasicTopNotification')
AddEventHandler('qb_notifi:ShowBasicTopNotification', function(text, duration)
    exports.qb_notifi:ShowBasicTopNotification(tostring(text), tonumber(duration))
end)

RegisterNetEvent('qb_notifi:ShowSimpleCenterText')
AddEventHandler('qb_notifi:ShowSimpleCenterText', function(text, duration)
    exports.qb_notifi:ShowSimpleCenterText(tostring(text), tonumber(duration))
end)

function LoadTexture(dict)
    if Citizen.InvokeNative(0x7332461FC59EB7EC, dict) then
        RequestStreamedTextureDict(dict, true)
        while not HasStreamedTextureDictLoaded(dict) do
            Wait(1)
        end
        return true
    else
        return false
    end
end
