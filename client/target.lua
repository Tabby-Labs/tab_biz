local ox_target = exports.ox_target
local ox_inv = exports.ox_inventory

local itemCache = {}
local imgPath = Config.ImagePath

---@param n string
---@param t string
---@param m string
---@param a function
---@return table
local function registerMenu(n, t, m, a)
    local menu = {
        id = n,
        title = t,
        options = {}
    }

    for item, data in pairs(m.menu) do
        local itemInfo = itemCache[item] or ox_inv:Items(item)
        if not itemCache[item] then itemCache[item] = itemInfo end

        if itemInfo and itemInfo.label then
            local desc = ''

            for k, recipe in ipairs(data.recipes) do
                local recipeInfo = itemCache[recipe.name] or ox_inv:Items(recipe.name)
                if not itemCache[recipe.name] then itemCache[recipe.name] = recipeInfo end

                if recipeInfo and recipeInfo.label then
                    desc = desc .. ('| x%s %s '):format(recipe.amount, recipeInfo.label)
                end
            end

            menu.options[#menu.options+1] = {
                title = itemInfo.label,
                description = desc,
                -- icon = imgPath:format(item),
                onSelect = a,
            }
        end
    end

    lib.registerContext(menu)
    lib.showContext(menu.id)
end

CreateThread(function()
    for i = 1, #Config.Restaurants do
        local business = Config.Restaurants[i]
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
                name = ('bossmenu_%s'):format(business.job),
                coords = business.bossmenu,
                radius = 0.5,
                debug = Config.Debug,
                options = {
                    {
                        label = 'Boss Menu',
                        icon = 'fa-solid fa-computer',
                        onSelect = function()
                            TriggerEvent('esx_society:openBossMenu', business.job, function(menu)
                                -- 
                            end, { wash = business.washMoney })
                        end
                    }
                }
            })
        end

        if kitchen.drinks then
            for j = 1, #kitchen.drinks do
                local drink = kitchen.drinks[j]
                ox_target:addSphereZone({
                    name = ('drink_%s_%s_#%s'):format(business.job, drink.name, j),
                    coords = drink.coords,
                    radius = 0.5,
                    debug = Config.Debug,
                    options = {
                        {
                            label = ('%s'):format(drink.label),
                            icon = 'fa-solid fa-cocktail',
                            onSelect = function()
                                registerMenu(
                                    ('%s_%s'):format(business.job, drink.name),
                                    drink.label,
                                    drink,
                                    function()
                                        print('Hello World, I am born today')
                                    end)
                            end
                        }
                    }
                })
            end
        end

        if kitchen.foods then
            for j = 1, #kitchen.foods do
                local food = kitchen.foods[j]
                ox_target:addSphereZone({
                    name = ('drink_%s_%s_#%s'):format(business.job, food.name, j),
                    coords = food.coords,
                    radius = 0.5,
                    debug = Config.Debug,
                    options = {
                        {
                            label = ('%s'):format(food.label),
                            icon = 'fa-solid fa-cocktail',
                            onSelect = function()
                                registerMenu(
                                    ('%s_%s'):format(business.job, food.name),
                                    food.label,
                                    food,
                                    function()
                                        print('Hello World, I am born today')
                                    end)
                            end
                        }
                    }
                })
            end
        end

        local storage = business.storage
        local tray = business.tray
        local cashier = business.cashier

        if storage then
            for j = 1, #storage do
                local xStorage = storage[j]
                ox_target:addSphereZone({
                    name = ('storage_%s_#%s'):format(business.job, j),
                    coords = xStorage.coords,
                    radius = xStorage.size,
                    debug = Config.Debug,
                    options = {
                        {
                            label = ('%s'):format(xStorage.label),
                            icon = 'fa-solid fa-box',
                            onSelect = function()
                                print('this must make you to open the storage')
                            end
                        }
                    }
                })
            end
        end

        if tray then
            for j = 1, #tray do
                local xTray = tray[j]
                ox_target:addSphereZone({
                    name = ('tray_%s_#%s'):format(business.job, j),
                    coords = xTray.coords,
                    radius = xTray.size,
                    debug = Config.Debug,
                    options = {
                        {
                            label = ('%s'):format(xTray.label),
                            icon = 'fa-solid fa-tray',
                            onSelect = function()
                                print('this must make you to open the tray')
                            end
                        }
                    }
                })
            end
        end

        if cashier then
            for j = 1, #cashier do
                local xCashier = cashier[j]
                ox_target:addSphereZone({
                    name = ('cashier_%s_#%s'):format(business.job, j),
                    coords = xCashier.coords,
                    radius = 0.25,
                    debug = Config.Debug,
                    options = {
                        {
                            label = 'Cash Register',
                            icon = 'fa-solid fa-cash-register',
                            onSelect = function()
                                print('this must make you to open the cashier menu')
                            end
                        }
                    }
                })
            end
        end
    end
end)