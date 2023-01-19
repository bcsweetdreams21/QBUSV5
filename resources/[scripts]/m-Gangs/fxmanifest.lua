fx_version 'bodacious'
game 'gta5'

description 'm-Gangs - Developed by marcinhu#0001'
version '1.0'

ui_page 'html/index.html'

files {
	'html/*.*',
}

shared_scripts {
	'configs/**.lua',
}

server_scripts{
	'@oxmysql/lib/MySQL.lua',
	'server/**.lua',
}

client_scripts{
	'client/**.lua',
}

escrow_ignore {
  'configs/**.lua',
  'Doorlocks/**',
  "README.md",
  "gang_reputation.sql",
}


lua54 'yes'
dependency '/assetpacks'