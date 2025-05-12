if Config.EnableService then    
    for i = 1, #Config.Restaurants do
        local business = Config.Restaurants[i]
        local bizName = business.job
        TriggerEvent('esx_service:activateService', bizName, 100)
    end
end