fx_version 'cerulean'
game 'gta5'
description 'simple business system'
autho 'tabby stove'
lua54 'yes'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua',
    'businesses/*.lua',
}

client_scripts {
    'client/main.lua',
}