fx_version 'bodacious'
games { 'gta5' }

version '0.0.1'

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

    'client/*.lua',
}

server_scripts {
    'server/*.lua',
}
