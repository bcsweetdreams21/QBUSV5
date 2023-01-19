----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

fx_version 'adamant'

game 'gta5'

author 'case#1993'

description 'BOII | Development - Businesses; UwU Cafe'

version '2.0.1'

lua54 'yes'

dependencies {
    'boii-consumables'
}
server_scripts {
    'server/*',
    'escrow/uwulocked_sv.lua'
}
client_scripts {
    'client/**/*',
    'escrow/uwulocked_cl.lua'
}
shared_scripts {
    'shared/*'
}
escrow_ignore {
    'server/*',
    'client/**/*',
    'shared/*',
    'stream/*'
}
dependency '/assetpacks'