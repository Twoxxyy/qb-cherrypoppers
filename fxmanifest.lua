fx_version 'cerulean'
game 'gta5'

author 'Twoxxyy'
description 'Cherry Poppers job script for QBCore'
version 'v1.0'

shared_scripts {
    'config.lua',
}

client_scripts {
	'client/*.lua',
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/*.lua',
}
