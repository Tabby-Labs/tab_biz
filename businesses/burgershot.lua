local burgershot = {
    job = 'burgershot', -- Job name
    label = 'Burger Shot', -- Display name
    businessType = 'restaurant', -- Type of business (restaurant, bar, etc.)
    location = {coords = vec3(-1182.8517, -887.2555, 13.8862), blip = {id = 106, color = 1, scale = 0.8}},
    interactions = {
        duty = vec3(-1198.5283, -904.4304, 13.8862),
        washhands = vec3(-1199.7711, -899.3098, 13.8862),
        bossmenu = vec3(-1188.0540, -905.8120, 13.6323),
        drinks = {
            pos = {
                [1] = vec3(-1199.5912, -896.7819, 13.8862),
            }
        },
        foods = {
            pos = {
                [1] = vec3(-1196.7211, -897.8578, 13.8862),
                [2] = vec3(-1194.8528, -898.3880, 13.8862)
            }
        },
        tray = {
            pos = {
                [1] = vec3(-1194.8529, -895.9547, 13.8862),
                [2] = vec3(-1194.6354, -894.1411, 13.8862),
            }
        },
        cashier = {
            pos = {
                [1] = vec3(-1191.6669, -894.8914, 13.8862),
            }
        },
    },
}

Config.Businesses[#Config.Businesses+1] = burgershot