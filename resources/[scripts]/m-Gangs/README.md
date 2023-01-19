# m-Gangs script for QB-Core

	| If you are intested in recieving updates join the community on **[Discord](https://discord.gg/marcinhu)**! |

# Infomation

	Thank you for choosing our team! There's not much to teach, everything is configurable through config.lua, you can create infinite gangs, infinite peds, whatever you want. 
	By default all gangs come with 4 identical cars, but the color is different, it also comes with the same craft for everyone so you will have to change it according to what you need :) 
	You can also activate and deactivate the craft individually in each gang. I hope you like it!

# Examples to reputation
	
	RegisterCommand('testing', function()
	    local gangname = QBCore.Functions.GetPlayerData().gang.name
	    TriggerServerEvent('m-Gangs:Server:updateReputation', gangname, value)
	end)

	- Trigger Server Side: 

	TriggerServerEvent('m-Gangs:Server:updateReputation', gangname, value)

# Crafting

	Inspired on: https://github.com/qw-scripts/qw-crafting

# Required

**Maps**
https://www.gabzv.com/


# qb-core/shared/gangs.lua

	['lostmc'] = {
		label = 'The Lost MC',
		grades = { 
			['0'] = { name = 'Recruit'},
			['1'] = { name = 'Enforcer' },
			['2'] = { name = 'Shot Caller' },
			['3'] = { name = 'Boss', isboss = true },
        },
	},
	['ballas'] = {
		label = 'Ballas',
		grades = {
            ['0'] = { name = 'Recruit' },
			['1'] = { name = 'Enforcer' },
			['2'] = { name = 'Shot Caller' },
			['3'] = { name = 'Boss', isboss = true },
        },
	},
	['vagos'] = {
		label = 'Vagos',
		grades = {
            ['0'] = { name = 'Recruit' },
			['1'] = { name = 'Enforcer' },
			['2'] = { name = 'Shot Caller' },
			['3'] = { name = 'Boss', isboss = true },
        },
	},
	['triads'] = {
		label = 'Triads',
		grades = {
            ['0'] = { name = 'Recruit' },
			['1'] = { name = 'Enforcer' },
			['2'] = { name = 'Shot Caller' },
			['3'] = { name = 'Boss', isboss = true },
        },
	},
	['families'] = {
		label = 'Families',
		grades = {
            ['0'] = { name = 'Recruit' },
			['1'] = { name = 'Enforcer' },
			['2'] = { name = 'Shot Caller' },
			['3'] = { name = 'Boss', isboss = true },
        },
	},
	['aztecas'] = {
		label = 'Aztecas',
		grades = {
            ['0'] = { name = 'Recruit' },
			['1'] = { name = 'Enforcer' },
			['2'] = { name = 'Shot Caller' },
			['3'] = { name = 'Boss', isboss = true },
        },
	},
	['altruists'] = {
		label = 'Altruists',
		grades = {
            ['0'] = { name = 'Recruit' },
			['1'] = { name = 'Enforcer' },
			['2'] = { name = 'Shot Caller' },
			['3'] = { name = 'Boss', isboss = true },
        },
	},
	['marabunta'] = {
		label = 'Marabunta',
		grades = {
            ['0'] = { name = 'Recruit' },
			['1'] = { name = 'Enforcer' },
			['2'] = { name = 'Shot Caller' },
			['3'] = { name = 'Boss', isboss = true },
        },
	},


# qb-management/client/cl_config.lua

	Config.GangMenus = {
	    ['lostmc'] = {
	        vector3(103.28, 3604.67, 40.49),
	    },
	    ['ballas'] = {
	        vector3(-0.5, -1810.53, 29.15),
	    },
	    ['vagos'] = {
	        vector3(328.04, -2000.87, 24.21),
	    },
	    ['aztecas'] = {
	        vector3(484.73, -1534.99, 29.29),
	    },
	    ['families'] = {
	        vector3(-164.34, -1617.67, 33.65),
	    },
	    ['marabunta'] = {
	        vector3(1249.26, -1581.83, 58.35),
	    },
	    ['altruists'] = {
	        vector3(-1108.76, 4939.55, 223.13),
	    },
	    ['triads'] = {
	        vector3(-645.9, -1242.79, 11.55),
	    },
	}
