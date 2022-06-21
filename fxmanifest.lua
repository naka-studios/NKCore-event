--// FX Information \\--
fx_version   'adamant'
use_fxv2_oal 'no'
lua54        'no'
game         'gta5'

--// Resource Information \\--
name         'NKCore Event'
author       'Benjamin4k'
version      '1.0.0'
repository   'https://github.com/naka-studios/NKCore'
description  'NKCore Game Event'

--// Manifest \\--
dependencies {
    '/server:5562'
}

shared_scripts {
	'class/common.lua',
    'class/debug.lua',
    'print.lua'
}

server_scripts {
    'config/server',
    
    'main.lua',
    'class/identifier.lua',
    'event/core.lua',
    'function/drop.lua',
    'function/webhook.lua',
    'event/main.lua',
    'loop/main.lua'
}