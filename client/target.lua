local ox_target = exports.ox_target

CreateThread(function(threadId)
    for i = 1, #Config.Businesses do
        local business = Config.Businesses[i]
        local kitchen = business.kitchen

        if business.duty then
            ox_target:addSphereZone({
                name = ('duty_%s'):format(business.job),
                coords = business.duty,
                radius = 0.2,
                debug = Config.Debug,
                options = {
                    {
                        label = 'On duty',
                        icon = 'fa-solid fa-user-check',
                        onSelect = function()
                            print('this must make you to go on duty')
                        end
                    }
                }
            })
        end

        if business.washhands then
            ox_target:addSphereZone({
                name = ('washhands_%s'):format(business.job),
                coords = business.washhands,
                radius = 0.3,
                debug = Config.Debug,
                options = {
                    {
                        label = 'Wash hands',
                        icon = 'fa-solid fa-hand-wash',
                        onSelect = function()
                            print('this must make you to wash hands')
                        end
                    }
                }
            })
        end

        if business.bossmenu then
            ox_target:addSphereZone({
                name = ('bossmeny_%s'):format(business.job),
                coords = business.bossmenu,
                radius = 0.5,
                debug = Config.Debug,
                options = {
                    {
                        label = 'Boss Menu',
                        icon = 'fa-solid fa-computer',
                        onSelect = function()
                            print('this must make you to open the boss')
                        end
                    }
                }
            })
        end
    end
end)