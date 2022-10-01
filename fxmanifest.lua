fx_version 'cerulean'
games {'gta5'}

lua54 'yes'

name         'tofdrugs'
version      '1.0.0'
description  'Complete Drugs system'
author       'ChrisToF#0851'
repository   'https://github.com/ChrisToFLuA/tofdrugs'

dependency {
	'ox_lib'
}
shared_scripts {
	'@es_extended/imports.lua',
	'@ox_lib/init.lua',
    'shared/*.lua'
}

server_scripts {
	'server/*.lua'
}

client_scripts {
	'client/*.lua'
}

files{
    'locales/*.json'
}
