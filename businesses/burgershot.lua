local burgershot = {
    job = 'burgershot', -- Job name
    label = 'Burger Shot', -- Display name
    businessType = 'restaurant', -- Type of business (restaurant, bar, etc.)
    location = {coords = vec3(-1182.8517, -887.2555, 13.8862), blip = {id = 106, color = 1, scale = 0.8}},
    interactions = {
        duty = vec3(-1198.55, -904.75, 14.5),
        washhands = vec3(-1201.2, -890.95, 14.0),
        bossmenu = vec3(-1187.4, -906.15, 14.0),
        drinks = {
            {
                name = 'juice_machine',
                label = 'Juice Machine',
                coords = vec3(-1199.75, -896.5, 14.0),
                menu = {
                    ['bs_juice_a'] = {
                        amount = 1,
                        recipes = {
                            { name = 'juice_cup', amount = 1}
                        }
                    },
                    ['bs_juice_b'] = {
                        amount = 1,
                        recipes = {
                            { name = 'juice_cup', amount = 1},
                            { name = 'ice', amount = 1}
                        }
                    },
                }
            },
            {
                name = 'soda_machine',
                label = 'Soda Machine',
                coords = vec3(-1197.05, -895.65, 14.0),
                menu = {
                    ['bs_soda_a'] = {
                        amount = 1,
                        recipes = {
                            { name = 'soda_cup', amount = 1}
                        }
                    },
                    ['bs_soda_b'] = {
                        amount = 1,
                        recipes = {
                            { name = 'soda_cup', amount = 1},
                            { name = 'ice', amount = 1}
                        }
                    },
                }
            },
        },
        kitchen = {
            {
                name = 'cooking_station',
                label = 'Cooking Station',
                coords = vec3(-1199.75, -896.5, 14.0),
                menu = {
                    ['bs_fries'] = {
                        amount = 1,
                        recipes = {
                            { name = 'bs_frozen_fries', amount = 1}
                        }
                    },
                    ['bs_cooked_patty'] = {
                        amount = 1,
                        recipes = {
                            { name = 'bs_frozen_patty', amount = 1},
                        }
                    },
                }
            },
            {
                name = 'food_prep',
                label = 'Food Prep',
                coords = vec3(-1197.05, -895.65, 14.0),
                menu = {
                    ['bs_burger'] = {
                        amount = 1,
                        recipes = {
                            { name = 'bs_cooked_patty', amount = 1},
                            { name = 'bs_burger_bun', amount = 1},
                            { name = 'bs_lettuce', amount = 1},
                            { name = 'bs_tomato', amount = 1},
                            { name = 'bs_onion', amount = 1},
                        }
                    },
                }
            },
        },
        -- tray = {

        -- },
        -- cashier = {

        -- },
    },
}

Config.Businesses[#Config.Businesses+1] = burgershot