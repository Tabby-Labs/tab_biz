for i = 1, #Config.Businesses do
    local business = Config.Businesses[i]
    local job = business.job
    local label = business.label

    if job then
        TriggerEvent('esx_society:registerSociety', job, label, ('society_%s'):format(job), ('society_%s'):format(job), ('society_%s'):format(job), {type = 'public'})
        print('Loaded')
    end
end