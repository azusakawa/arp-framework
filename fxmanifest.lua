fx_version 'bodacious'
games { 'gta5' }

client_scripts {
    ----------------------------------------
    -- Rage UI 
    ----------------------------------------
    'RageUI/src/RMenu.lua',
    'RageUI/src/menu/RageUI.lua',
    'RageUI/src/menu/Menu.lua',
    'RageUI/src/menu/MenuController.lua',

    'RageUI/src/components/*.lua',

    'RageUI/src/menu/elements/*.lua',

    'RageUI/src/menu/items/*.lua',

    'RageUI/src/menu/panels/*.lua',

    'RageUI/src/menu/panels/*.lua',
    'RageUI/src/menu/windows/*.lua',

    'client/function.lua',
    'client/*.lua',
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'server/function.lua',
    'server/*.lua',
}

dependencies {
	'mysql-async',
}