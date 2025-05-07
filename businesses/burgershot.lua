local burgershot = {
    job = 'burgershot', -- Job name
    label = 'Burger Shot', -- Display name
    businessType = 'restaurant', -- Type of business (restaurant, bar, etc.)
    location = {coords = vec3(-1199.65, -895.84, 12.97), blip = {id = 106, color = 1, scale = 0.8}},
    interactions = {
        duty = vec3(-1178.57, -897.04, 12.97),
        washhands = vec3(-1197.49, -902.69, 12.97),
    }
}

Config.Businesses[#Config.Businesses+1] = burgershot