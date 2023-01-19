fx_version 'cerulean'
game 'gta5'

shared_scripts {
    'shared/sh_*.lua',
}

client_scripts {
    'client/client.lua',
    'client/**/cl_*.lua'
}

server_scripts {
    'server/server.lua',
    'server/**/sv_*.lua'
}