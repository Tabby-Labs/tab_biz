local burgershot = {
    job = 'burgershot', -- Job name
    label = 'Burger Shot', -- Display name
    location = {coords = vec3(-1182.8517, -887.2555, 13.8862), id = 106, color = 1, scale = 0.8},
    duty = vec3(-1198.55, -904.75, 14.5),
    washhands = vec3(-1201.2, -890.95, 14.0),
    bossmenu = vec3(-1187.4, -906.15, 14.0),
    washMoney = true,
    kitchen = {
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
        foods = {
            {
                name = 'cooking_station',
                label = 'Cooking Station',
                coords = vec3(-1196.1, -900.0, 13.65),
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
                name = 'dessert_station',
                label = 'Dessert Station',
                coords = vec3(-1198.6, -899.4, 13.8),
                menu = {
                    ['bs_muffin'] = {
                        amount = 1,
                        recipes = {
                            { name = 'bs_flour', amount = 1},
                            { name = 'bs_sugar', amount = 1},
                        }
                    },
                }
            },
            {
                name = 'food_prep',
                label = 'Food Prep',
                coords = vec3(-1194.8, -897.8, 13.9),
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
    },
    storage = {
        { coords = vec3(-1202.9, -897.3, 14.4), size = 0.5, name = 'fridge', label = 'Fridge', slots = 39, weight = 10000, personal = false },
        { coords = vec3(-1196.55, -901.45, 14.0), size = 1.1, name = 'cold_room', label = 'Cold Room', slots = 50, weight = 100000, personal = false},
        { coords = vec3(-1190.1, -898.8, 13.2), size = 0.5, name = 'personal', label = 'Personal Stash', slots = 29, weight = 80000, personal = true },
    },
    tray = {
        { coords = vec3(-1195.0, -896.25, 14.1), size = 0.5, name = 'tray_pickup_1', label = 'Prepared Foods', slots = 5, weight = 10000 },
        { coords = vec3(-1194.6, -893.35, 14.0), size = 0.5, name = 'tray_pickup_2', label = 'Ready Foods', slots = 5, weight = 10000 },
    },
    cashier = {
        { coords = vec3(-1191.45, -894.1, 14.0) }
    },
}

Config.Restaurants[#Config.Restaurants+1] = burgershot