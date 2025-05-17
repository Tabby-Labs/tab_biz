local ox_inv = exports.ox_inventory

AddEventHandler('onResourceStart', function(res)
    if res ~= GetCurrentResourceName() then
        return
    end

    for i = 1, #Config.Restaurants do
        local business = Config.Restaurants[i]
        local storage, tray = business.storage, business.tray

        if storage then
            for j = 1, #storage do
                local stash = storage[j]

                ox_inv:RegisterStash(stash.name, stash.label, stash.slots, stash.weight, stash.personal)
                print(('[Debug]: Stash (%s) Registered'):format(stash.label))
            end
        end

        if tray then
            for j = 1, #tray do
                local prepare = tray[j]

                ox_inv:RegisterStash(prepare.name, prepare.label, prepare.slots, prepare.weight, prepare.personal)
                print(('[Debug]: Tray (%s) Registered'):format(prepare.label))
            end
        end
    end
end)