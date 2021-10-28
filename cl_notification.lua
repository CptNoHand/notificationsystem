RegisterNetEvent('Notification:Tip', function(text, duration)
    exports.notificationsystem:ShowTooltip(tostring(text), tonumber(duration))
end)

RegisterNetEvent('Notification:RightText', function(text, duration)
    exports.notificationsystem:DisplayRightText(tostring(text), tonumber(duration))
end)

RegisterNetEvent('Notification:ShowObjective', function(text, duration)
    exports.notificationsystem:ShowObjective(tostring(text), tonumber(duration))
end)

RegisterNetEvent('Notification:ShowBasicTopNotification', function(text, duration)
    exports.notificationsystem:ShowBasicTopNotification(tostring(text), tonumber(duration))
end)

RegisterNetEvent('Notification:ShowSimpleCenterText', function(text, duration)
    exports.notificationsystem:ShowSimpleCenterText(tostring(text), tonumber(duration))
end)

RegisterNetEvent('Notification:ShowLocationNotification', function(text, location, duration)
    exports.notificationsystem:ShowLocationNotification(tostring(text), tostring(location), tonumber(duration))
end)    

RegisterNetEvent('Notification:ShowTopNotification', function(tittle, subtitle, duration)
    exports.notificationsystem:ShowTopNotification(tostring(tittle), tostring(subtitle), tonumber(duration))
end)    

RegisterNetEvent('Notification:ShowAdvancedLeftNotification', function(firsttext, secondtext, dict, icon, duration)
    local _dict = dict
    local _icon = icon
    if not LoadTexture(_dict) then
        _dict = "generic_textures"
        LoadTexture(_dict)
        _icon = "tick"
    end        
    exports.notificationsystem:ShowAdvancedLeftNotification(tostring(firsttext), tostring(secondtext), tostring(_dict), tostring(_icon), tonumber(duration))
end)        

RegisterNetEvent('Notification:ShowAdvancedRightNotification', function(text, dict, icon, text_color, duration)
    local _dict = dict
    local _icon = icon
    if not LoadTexture(_dict) then
        _dict = "generic_textures"
        LoadTexture(_dict)
        _icon = "tick"
    end    
    exports.notificationsystem:ShowAdvancedRightNotification(tostring(text), tostring(_dict), tostring(_icon), tostring(text_color), tonumber(duration))
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
