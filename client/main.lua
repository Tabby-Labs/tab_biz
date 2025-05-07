-- testing purpose
CreateThread(function()
    while true do
        local ped = cache.ped
        for i = 1, #Config.Businesses do
            local business = Config.Businesses[i]
            local coords = business.location.coords
            local dist = #(GetEntityCoords(ped) - coords)

            if dist < 2 then
                print('You are near ' .. business.label)

                if IsControlJustPressed(0, 38) then
                    print('You pressed E near ' .. business.job)
                end
            end
        end
        Wait(100)
    end
end)