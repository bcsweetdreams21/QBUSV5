-------------------------------
---------- CASE#1993 ----------
-------------------------------

### BOII | Development - UwU Cat Cafe Job Script ###

Here we have a indepth fully equiped job for your citizens.
You can cook a variety of food or prepare drinks for customers.
48 total consumables all coded interally for convienence
Highly customisable through config.lua.
Includes a simple menu system, and pettable cats.
Enjoy

### USAGE ###

- Third-eye function for entire script
- Target boards on wall to go on duty
- Target lockers for wardrobe location 
- Target shelving for dry store
- Target epos machines to make sales
- Target trays to pass orders to customers
- Target the chefs pass to pass orders from back of kitchen to the front
- Target coffee machine to prepare hot drinks
- Target refrigerator for cold store
- Target chopping board to make sushi or sashimi
- Target mixer to make batter for baking, unbaked goods, mix ramune or boba
- Target oven to cook batter into baked goods
- Target sink to wash hand and face to reduce stress
- Target rear wall in garage to spawn cars
- Target cats to pet and reduce stress
- Use menu from pockets to open menu
- All items consumed as normal

### INSTALL ###

1) Customise config.lua to your liking 
2) Drag and drop `boii-uwucafe` into your server resources 
3) Add `ensure boii-uwucafe` into your server.cfg
4) Make sure that all ### REQUIREMENTS ### are installed and ensured before `boii-uwucafe`
5) Add images provided into your `qb-inventory/html/images`
6) Add information provided into your shared `qb-core/shared.lua` or `qb-core/shared/items.lua
7) Restart your city

### SHARED ###

	--<!>-- UWU CAFE --<!>--
	-- Equipment
	['uwumenu']                	 	= {['name'] = 'uwumenu',               			['label'] = 'UwU Cafe Menu',            ['weight'] = 250,       ['type'] = 'item',      ['image'] = 'uwumenu.png',        				['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    		['combinable'] = nil,   ['description'] = 'UwU Cafe food menu.'},
	['bobacup'] 		     		= {['name'] = 'bobacup', 			    		['label'] = 'Boba Tea Cup', 	        ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'bobacup.png', 	    				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	   	['combinable'] = nil,   ['description'] = 'A empty boba tea cup.'},
	['taiyakipan']               	= {['name'] = 'taiyakipan',               		['label'] = 'Taiyaki Pan',              ['weight'] = 250,       ['type'] = 'item',      ['image'] = 'taiyakipan.png',        			['unique'] = false,     ['useable'] = false,    ['shouldClose'] = false,    	['combinable'] = nil,   ['description'] = 'A taiyaki frying pan.'},
	['clean_plate'] 				= {['name'] = 'clean_plate', 			    	['label'] = 'Clean Plate', 				['weight'] = 50, 		['type'] = 'item', 		['image'] = 'clean_plate.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	   	['combinable'] = nil,   ['description'] = 'A clean dinner plate!'},
	['dirty_plate'] 				= {['name'] = 'dirty_plate', 			    	['label'] = 'Dirty Plate', 				['weight'] = 50, 		['type'] = 'item', 		['image'] = 'dirty_plate.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	   	['combinable'] = nil,   ['description'] = 'A dirty dinner plate!'},
	['clean_bowl'] 					= {['name'] = 'clean_bowl', 			    	['label'] = 'Clean Bowl', 				['weight'] = 50, 		['type'] = 'item', 		['image'] = 'clean_bowl.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	   	['combinable'] = nil,   ['description'] = 'A clean bowl!'},
	['dirty_bowl'] 					= {['name'] = 'dirty_bowl', 			    	['label'] = 'Dirty Bowl', 				['weight'] = 50, 		['type'] = 'item', 		['image'] = 'dirty_bowl.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	   	['combinable'] = nil,   ['description'] = 'A dirty bowl!'},
	['clean_bentobox']              = {['name'] = 'clean_bentobox',               	['label'] = 'Clean Bento Box',          ['weight'] = 250,       ['type'] = 'item',      ['image'] = 'clean_bentobox.png',        		['unique'] = false,     ['useable'] = false,    ['shouldClose'] = false,    	['combinable'] = nil,   ['description'] = 'A clean bento box.'},
	['dirty_bentobox']              = {['name'] = 'dirty_bentobox',               	['label'] = 'Dirty Bento Box',          ['weight'] = 250,       ['type'] = 'item',      ['image'] = 'dirty_bentobox.png',        		['unique'] = false,     ['useable'] = false,    ['shouldClose'] = false,    	['combinable'] = nil,   ['description'] = 'A dirty bento box.'},
	['clean_cup'] 					= {['name'] = 'clean_cup', 			    		['label'] = 'Clean Cup', 				['weight'] = 50, 		['type'] = 'item', 		['image'] = 'clean_cup.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	   	['combinable'] = nil,   ['description'] = 'A clean cup!'},
	['dirty_cup'] 					= {['name'] = 'dirty_cup', 			    		['label'] = 'Dirty Bowl', 				['weight'] = 50, 		['type'] = 'item', 		['image'] = 'dirty_cup.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	   	['combinable'] = nil,   ['description'] = 'A dirty cup!'},
	['clean_glass'] 				= {['name'] = 'clean_glass', 			    	['label'] = 'Clean Glass', 				['weight'] = 50, 		['type'] = 'item', 		['image'] = 'clean_glass.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	   	['combinable'] = nil,   ['description'] = 'A clean glass!'},
	['dirty_glass'] 				= {['name'] = 'dirty_glass', 			    	['label'] = 'Dirty Glass', 				['weight'] = 50, 		['type'] = 'item', 		['image'] = 'dirty_glass.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	   	['combinable'] = nil,   ['description'] = 'A dirty glass!'},
	['emptyglassbottle'] 			= {['name'] = 'emptyglassbottle', 			 	['label'] = 'Empty Glass Bottle', 		['weight'] = 750, 		['type'] = 'item', 		['image'] = 'emptyglassbottle.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,  		['combinable'] = nil,   ['description'] = 'A scrap glass bottle..'},
	['emptyplasticcup'] 			= {['name'] = 'emptyplasticcup', 			 	['label'] = 'Empty Plastic Cup', 		['weight'] = 50, 		['type'] = 'item', 		['image'] = 'emptyplasticcup.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,  		['combinable'] = nil,   ['description'] = 'A scrap plastic cup..'},

	-- Collectibles
	['arcadeplush01'] 		     	= {['name'] = 'arcadeplush01', 					['label'] = 'Humpy Plushie', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 'arcadeplush01.png', 	   			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Collectible Plushie 1; Humpy'},
	['arcadeplush02'] 		     	= {['name'] = 'arcadeplush02', 					['label'] = 'Muffy Plushie', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 'arcadeplush02.png', 	   			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Collectible Plushie 2; Muffy'},
	['arcadeplush03'] 		     	= {['name'] = 'arcadeplush03', 					['label'] = 'Saki Plushie', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 'arcadeplush03.png', 	   			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Collectible Plushie 3; Saki'},
	['arcadeplush04'] 		     	= {['name'] = 'arcadeplush04', 					['label'] = 'Poopy Plushie', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 'arcadeplush04.png', 	   			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Collectible Plushie 4; Poopy'},
	['arcadeplush05'] 		     	= {['name'] = 'arcadeplush05', 					['label'] = 'Smokey Plushie', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 'arcadeplush05.png', 	   			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Collectible Plushie 5; Smokey'},
	['arcadeplush06'] 		     	= {['name'] = 'arcadeplush06', 					['label'] = 'Grindy Plushie', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 'arcadeplush06.png', 	   			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Collectible Plushie 6; Grindy'},
	['arcadeplush07'] 		     	= {['name'] = 'arcadeplush07', 					['label'] = 'PRB Plushie', 				['weight'] = 350, 		['type'] = 'item', 		['image'] = 'arcadeplush07.png', 	   			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Collectible Plushie 7; Princess Robot Bubblegum'},
	['arcadeplush08'] 		     	= {['name'] = 'arcadeplush08', 					['label'] = 'SWK Plushie', 				['weight'] = 350, 		['type'] = 'item', 		['image'] = 'arcadeplush08.png', 	   			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Collectible Plushie 8; Shiny Wasabi Kitty'},
	['arcadeplush09'] 		     	= {['name'] = 'arcadeplush09', 					['label'] = 'Master Plushie', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 'arcadeplush09.png', 	   			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Collectible Plushie 9; Master Hentai'},

	-- Ingredients
	['coffeebean']              	= {['name'] = 'coffeebean',               		['label'] = 'Coffee Beans',             ['weight'] = 20,       	['type'] = 'item',      ['image'] = 'coffeebean.png',        			['unique'] = false,     ['useable'] = false,    ['shouldClose'] = false,    	['combinable'] = nil,   ['description'] = 'Fresh coffee beans!'},
	['blacktealeaf'] 		    	= {['name'] = 'blacktealeaf', 			    	['label'] = 'Black Tea Leaf', 	        ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'blacktealeaf.png', 	    		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	   	['combinable'] = nil,   ['description'] = 'Cup of tea guvernor..'},
	['greentealeaf'] 		    	= {['name'] = 'greentealeaf', 			    	['label'] = 'Green Tea Leaf', 	        ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'greentealeaf.png', 	    		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	   	['combinable'] = nil,   ['description'] = 'Cup of tea guvernor..'},
	['rice']              	 	 	= {['name'] = 'rice',               			['label'] = 'Rice',                		['weight'] = 100,       ['type'] = 'item',      ['image'] = 'rice.png',        					['unique'] = false,     ['useable'] = false,    ['shouldClose'] = false,    	['combinable'] = nil,   ['description'] = 'Rice, rice, baby..'},
	['lettuce'] 		        	= {['name'] = 'lettuce', 			        	['label'] = 'Lettuce', 	                ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'lettuce.png', 	            		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	   	['combinable'] = nil,   ['description'] = 'Ice, ice, iceberg lettuce?..'},
	['ramennoodles']     		 	= {['name'] = 'ramennoodles',      				['label'] = 'Ramen Noodles',         	['weight'] = 100,       ['type'] = 'item',      ['image'] = 'ramennoodles.png', 				['unique'] = false,     ['useable'] = false,    ['shouldClose'] = false,    	['combinable'] = nil,   ['description'] = 'Ramen noodles.'},
	['seaweed']              	 	= {['name'] = 'seaweed',               			['label'] = 'Seaweed',                  ['weight'] = 10,        ['type'] = 'item',      ['image'] = 'seaweed.png',        				['unique'] = false,     ['useable'] = false,    ['shouldClose'] = false,    	['combinable'] = nil,   ['description'] = 'Oh no! The seaweed.. Get it?'},
	['meat_deer']                	= {['name'] = 'meat_deer',                 		['label'] = 'Venison',                  ['weight'] = 850,       ['type'] = 'item',      ['image'] = 'meat_deer.png',            		['unique'] = false,     ['useable'] = false, 	['shouldClose'] = false,    	['combinable'] = nil,   ['description'] = 'Deer meat!'},
    ['meat_cow']                 	= {['name'] = 'meat_cow',                  		['label'] = 'Beef Meat',                ['weight'] = 1000,      ['type'] = 'item',      ['image'] = 'meat_cow.png',             		['unique'] = false,     ['useable'] = false, 	['shouldClose'] = false,    	['combinable'] = nil,   ['description'] = 'Cow meat!'},
    ['meat_pig']                 	= {['name'] = 'meat_pig',                  		['label'] = 'Pork Meat',                ['weight'] = 750,       ['type'] = 'item',      ['image'] = 'meat_pig.png',             		['unique'] = false,     ['useable'] = false, 	['shouldClose'] = false,    	['combinable'] = nil,   ['description'] = 'Pig meat!'},
    ['meat_chicken']             	= {['name'] = 'meat_chicken',              		['label'] = 'Chicken Meat',             ['weight'] = 700,       ['type'] = 'item',      ['image'] = 'meat_chicken.png',         		['unique'] = false,     ['useable'] = false, 	['shouldClose'] = false,    	['combinable'] = nil,   ['description'] = 'Chicken meat!'},
	['sardine']                  	= {['name'] = 'sardine',              			['label'] = 'Sardine',                  ['weight'] = 300,     	['type'] = 'item',      ['image'] = 'sardine.png',              		['unique'] = false,    	['useable'] = false, 	['shouldClose'] = false,    	['combinable'] = nil,   ['description'] = 'Pacific Sardine, a small but tasty fish!'},
    ['mackerel']                 	= {['name'] = 'mackerel',             			['label'] = 'Mackerel',                 ['weight'] = 320,   	['type'] = 'item',      ['image'] = 'mackerel.png',             		['unique'] = false,    	['useable'] = false, 	['shouldClose'] = false,    	['combinable'] = nil,   ['description'] = 'Pacfic Mackerel, a small but tasty fish!'},
    ['croaker']                  	= {['name'] = 'croaker',              			['label'] = 'Croaker',                  ['weight'] = 500,     	['type'] = 'item',      ['image'] = 'croaker.png',              		['unique'] = false,    	['useable'] = false, 	['shouldClose'] = false,    	['combinable'] = nil,   ['description'] = 'Yellowfin Croaker, mostly prey for bigger fish!'},
    ['perch']                    	= {['name'] = 'perch',                			['label'] = 'Perch',                    ['weight'] = 520,     	['type'] = 'item',      ['image'] = 'perch.png',                		['unique'] = false,    	['useable'] = false, 	['shouldClose'] = false,    	['combinable'] = nil,   ['description'] = 'California Perch, mostly prey for bigger fish!'},
    ['rockfish']                 	= {['name'] = 'rockfish',             			['label'] = 'Rockfish',                 ['weight'] = 800,     	['type'] = 'item',      ['image'] = 'rockfish.png',             		['unique'] = false,    	['useable'] = false, 	['shouldClose'] = false,    	['combinable'] = nil,   ['description'] = 'California Rockfish, a stingrays favourite meal!'},
    ['halibut']                  	= {['name'] = 'halibut',              			['label'] = 'Halibut',                  ['weight'] = 850,     	['type'] = 'item',      ['image'] = 'halibut.png',              		['unique'] = false,    	['useable'] = false, 	['shouldClose'] = false,    	['combinable'] = nil,   ['description'] = 'California Halibut, a stingrays favourite meal!'},
	['cherry']            		 	= {['name'] = 'cherry',             			['label'] = 'Cherry',     				['weight'] = 20,        ['type'] = 'item',      ['image'] = 'cherry.png',        				['unique'] = false,     ['useable'] = false,    ['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'Cherry!'},
	['lemon']            		 	= {['name'] = 'lemon',             				['label'] = 'Lemon',     				['weight'] = 40,        ['type'] = 'item',      ['image'] = 'lemon.png',        				['unique'] = false,     ['useable'] = false,    ['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'Lemon!'},	
	['pineapple']                	= {['name'] = 'pineapple',             			['label'] = 'Pineapple',     			['weight'] = 60,        ['type'] = 'item',      ['image'] = 'pineapple.png',        			['unique'] = false,     ['useable'] = false,    ['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'Lemon!'},
	['coconut']            		 	= {['name'] = 'coconut',             			['label'] = 'Coconut',     				['weight'] = 80,        ['type'] = 'item',      ['image'] = 'coconut.png',        				['unique'] = false,     ['useable'] = false,    ['shouldClose'] = false,   		['combinable'] = nil,   ['description'] = 'Coconut!'},
	['orange'] 		             	= {['name'] = 'orange', 			        	['label'] = 'Orange', 	                ['weight'] = 150, 		['type'] = 'item', 		['image'] = 'orange.png', 	            		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	   	['combinable'] = nil,   ['description'] = 'What rhymes with orange?'},
	['apple'] 		             	= {['name'] = 'apple', 			        		['label'] = 'Apple', 	                ['weight'] = 150, 		['type'] = 'item', 		['image'] = 'apple.png', 	            		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	   	['combinable'] = nil,   ['description'] = 'An apple a day keeps the dr away.'},
	['strawberry'] 		         	= {['name'] = 'strawberry', 			    	['label'] = 'Strawberry', 	            ['weight'] = 150, 		['type'] = 'item', 		['image'] = 'strawberry.png', 	        		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	   	['combinable'] = nil,   ['description'] = 'The sweetest of strawbs!'},
	['blueberry'] 		         	= {['name'] = 'blueberry', 			    		['label'] = 'Blueberry', 	            ['weight'] = 150, 		['type'] = 'item', 		['image'] = 'blueberry.png', 	        		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	   	['combinable'] = nil,   ['description'] = 'All those antioxidants.. mmmmm..'},
	['carbonatedwater'] 		    = {['name'] = 'carbonatedwater', 			    ['label'] = 'Carbonated Water', 	    ['weight'] = 150, 		['type'] = 'item', 		['image'] = 'carbonatedwater.png', 	        	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	   	['combinable'] = nil,   ['description'] = 'Carbonated water.'},
	['tapiocapearls'] 		     	= {['name'] = 'tapiocapearls', 					['label'] = 'Tapioca Pearls', 	        ['weight'] = 10, 		['type'] = 'item', 		['image'] = 'tapiocapearls.png', 	    		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	   	['combinable'] = nil,   ['description'] = 'What the heck are tapioca pearls..'},
	['bobateasyrup'] 		     	= {['name'] = 'bobateasyrup', 			    	['label'] = 'Boba Tea Syrup', 	        ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'bobateasyrup.png', 	    		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	   	['combinable'] = nil,   ['description'] = 'Syrupy goodness..'},
	['egg']              	 	 	= {['name'] = 'egg',               				['label'] = 'Egg',                		['weight'] = 10,       	['type'] = 'item',      ['image'] = 'egg.png',        					['unique'] = false,     ['useable'] = false,    ['shouldClose'] = false,    	['combinable'] = nil,   ['description'] = 'Eggs-actly what you needed..'},
	['flour']              	 	 	= {['name'] = 'flour',               			['label'] = 'Flour',                	['weight'] = 100,       ['type'] = 'item',      ['image'] = 'flour.png',        				['unique'] = false,     ['useable'] = false,    ['shouldClose'] = false,    	['combinable'] = nil,   ['description'] = 'The worlds second favorite white powder..'},
	['sodiumbicarbonate'] 			= {['name'] = 'sodiumbicarbonate', 				['label'] = 'Baking Soda', 			    ['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'sodiumbicarbonate.png', 			['unique'] = false,    	['useable'] = false, 	['shouldClose'] = false,	   	['combinable'] = nil,   ['description'] = 'Baking soda ey? What you cooking?'},	
	['adzukibeans']              	= {['name'] = 'adzukibeans',               		['label'] = 'Adzuki Beans',             ['weight'] = 10,       	['type'] = 'item',      ['image'] = 'adzukibeans.png',        			['unique'] = false,     ['useable'] = false,    ['shouldClose'] = false,    	['combinable'] = nil,   ['description'] = 'Adzuki Beans..'},

	-- Drinks
 	['cup_greentea']                = {['name'] = 'cup_greentea',                	['label'] = 'Cup of Green Tea',         ['weight'] = 200,       ['type'] = 'item',      ['image'] = 'cup_greentea.png',            		['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    		['combinable'] = nil,   ['description'] = 'A cup of green tea.'},
	['ramunecherry']             	= {['name'] = 'ramunecherry',         			['label'] = 'Ramune Cherry',       		['weight'] = 275,       ['type'] = 'item',      ['image'] = 'ramunecherry.png',     			['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    		['combinable'] = nil,   ['description'] = 'Ramune soda, cherry flavoured.'},
	['ramunelemon']              	= {['name'] = 'ramunelemon',         			['label'] = 'Ramune Lemon',       		['weight'] = 275,       ['type'] = 'item',      ['image'] = 'ramunelemon.png',     				['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    		['combinable'] = nil,   ['description'] = 'Ramune soda, lemon flavoured.'},
	['ramunepapple']             	= {['name'] = 'ramunepapple',         			['label'] = 'Ramune Pineapple',       	['weight'] = 275,       ['type'] = 'item',      ['image'] = 'ramunepapple.png',     			['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    		['combinable'] = nil,   ['description'] = 'Ramune soda, pineapple flavoured.'},
	['ramunecoconut']            	= {['name'] = 'ramunecoconut',         			['label'] = 'Ramune Coconut',       	['weight'] = 275,       ['type'] = 'item',      ['image'] = 'ramunecoconut.png',     			['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    		['combinable'] = nil,   ['description'] = 'Ramune soda, coconut flavoured.'},
	['ramuneorange']             	= {['name'] = 'ramuneorange',         			['label'] = 'Ramune Orange',       		['weight'] = 275,       ['type'] = 'item',      ['image'] = 'ramuneorange.png',     			['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    		['combinable'] = nil,   ['description'] = 'Ramune soda, orange flavoured.'},
	['ramuneapple']        		 	= {['name'] = 'ramuneapple',         			['label'] = 'Ramune Apple',       		['weight'] = 275,       ['type'] = 'item',      ['image'] = 'ramuneapple.png',     				['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    		['combinable'] = nil,   ['description'] = 'Ramune soda, apple flavoured.'},
	['ramunestrawberry']         	= {['name'] = 'ramunestrawberry',         		['label'] = 'Ramune Strawberry',       	['weight'] = 275,       ['type'] = 'item',      ['image'] = 'ramunestrawberry.png',     		['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    		['combinable'] = nil,   ['description'] = 'Ramune soda, strawberry flavoured.'},
	['ramuneblueberry']          	= {['name'] = 'ramuneblueberry',         		['label'] = 'Ramune Blueberry',       	['weight'] = 275,       ['type'] = 'item',      ['image'] = 'ramuneblueberry.png',      		['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    		['combinable'] = nil,   ['description'] = 'Ramune soda, blueberry flavoured.'},
	['bobatea'] 		         	= {['name'] = 'bobatea', 			    		['label'] = 'Boba Tea', 	        	['weight'] = 200, 		['type'] = 'item', 		['image'] = 'bobatea.png', 	   	    			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Boba tea..'},
	['matchabobatea'] 		     	= {['name'] = 'matchabobatea', 					['label'] = 'Matcha Boba Tea', 	        ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'matchabobatea.png', 	   			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Matcha Boba tea..'},
	['ichigobobatea'] 		     	= {['name'] = 'ichigobobatea', 					['label'] = 'Ichigo Boba Tea', 	        ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'strawbbobatea.png', 	   			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Ichigo Boba tea..'},
	['lemonbobatea'] 		     	= {['name'] = 'lemonbobatea', 					['label'] = 'Lemon Boba Tea', 	        ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'lemonbobatea.png', 	   			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Lemon Boba tea..'},
	['bluebbobatea'] 		     	= {['name'] = 'bluebbobatea', 					['label'] = 'Blueberry Boba Tea', 	    ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'bluebbobatea.png', 	   			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Blueberry Boba tea..'},
	['cocacola'] 				 	= {['name'] = 'cocacola', 			  	  		['label'] = 'CocaCola', 				['weight'] = 330, 		['type'] = 'item', 		['image'] = 'cocacola.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = {accept = {'clean_glass'}, reward = 'glass_cocacola', anim = {['dict'] = 'anim@amb@clubhouse@bar@drink@one', ['lib'] = 'one_bartender', ['text'] = 'Pouring a Glass Of CocaCola..', ['timeOut'] = math.random(3550,6500)}},  	['description'] = 'CocaCola, Taste The Feeling!'},
	['pepsi'] 				 		= {['name'] = 'pepsi', 			  	  			['label'] = 'Pepsi', 					['weight'] = 330, 		['type'] = 'item', 		['image'] = 'pepsi.png', 						['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = {accept = {'clean_glass'}, reward = 'glass_pepsi', anim = {['dict'] = 'anim@amb@clubhouse@bar@drink@one', ['lib'] = 'one_bartender', ['text'] = 'Pouring A Glass Of Pepsi..', ['timeOut'] = math.random(3550,6500)}},  	['description'] = 'Every Pepsi Refreshes The World!'},
	['drpepper'] 				 	= {['name'] = 'drpepper', 			  	  		['label'] = 'Dr Pepper', 				['weight'] = 330, 		['type'] = 'item', 		['image'] = 'drpepper.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = {accept = {'clean_glass'}, reward = 'glass_drpepper', anim = {['dict'] = 'anim@amb@clubhouse@bar@drink@one', ['lib'] = 'one_bartender', ['text'] = 'Pouring A Glass Of Dr Pepper..', ['timeOut'] = math.random(3550,6500)}},  	['description'] = 'Dr Pepper, whats the worst that can happen!'},
	['mountaindew'] 				= {['name'] = 'mountaindew', 			  	  	['label'] = 'Mountain Dew', 			['weight'] = 330, 		['type'] = 'item', 		['image'] = 'mountaindew.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = {accept = {'clean_glass'}, reward = 'glass_mountaindew', anim = {['dict'] = 'anim@amb@clubhouse@bar@drink@one', ['lib'] = 'one_bartender', ['text'] = 'Pouring A Glass Of Mountain Dew..', ['timeOut'] = math.random(3550,6500)}},  	['description'] = 'Do the DEW!'},
	['lemonade'] 					= {['name'] = 'lemonade', 			  	  		['label'] = 'Lemonade', 				['weight'] = 330, 		['type'] = 'item', 		['image'] = 'lemonade.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = {accept = {'clean_glass'}, reward = 'glass_lemonade', anim = {['dict'] = 'anim@amb@clubhouse@bar@drink@one', ['lib'] = 'one_bartender', ['text'] = 'Pouring A Glass Of Lemonade..', ['timeOut'] = math.random(3550,6500)}},  	['description'] = 'The Secret Lemonade Drinker!'},
	['water'] 						= {['name'] = 'water', 			  	  			['label'] = 'Water', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'water.png', 						['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = {accept = {'clean_glass'}, reward = 'glass_water', anim = {['dict'] = 'anim@amb@clubhouse@bar@drink@one', ['lib'] = 'one_bartender', ['text'] = 'Pouring A Glass Of Water..', ['timeOut'] = math.random(3550,6500)}},  	['description'] = 'Water the way nature intended.'},
    ['glass_cocacola']           	= {['name'] = 'glass_cocacola',             	['label'] = 'Glass of CocaCola',        ['weight'] = 200,       ['type'] = 'item',      ['image'] = 'glass_cocacola.png',        		['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    		['combinable'] = nil,  	['description'] = 'A refreshing glass of cocacola!'},
    ['glass_pepsi']           		= {['name'] = 'glass_pepsi',             		['label'] = 'Glass of Pepsi',       	['weight'] = 200,       ['type'] = 'item',      ['image'] = 'glass_pepsi.png',        			['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    		['combinable'] = nil,  	['description'] = 'A refreshing glass of pepsi!'},
    ['glass_drpepper']           	= {['name'] = 'glass_drpepper',             	['label'] = 'Glass of Dr Pepper',       ['weight'] = 200,       ['type'] = 'item',      ['image'] = 'glass_drpepper.png',        		['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    		['combinable'] = nil,  	['description'] = 'A refreshing glass of dr pepper!'},
    ['glass_mountaindew']           = {['name'] = 'glass_mountaindew',             	['label'] = 'Glass of Mountain Dew',    ['weight'] = 200,       ['type'] = 'item',      ['image'] = 'glass_mountaindew.png',        	['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    		['combinable'] = nil,  	['description'] = 'A refreshing glass of mountain dew!'},
    ['glass_lemonade']           	= {['name'] = 'glass_lemonade',             	['label'] = 'Glass of Lemonade',    	['weight'] = 200,       ['type'] = 'item',      ['image'] = 'glass_lemonade.png',        		['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    		['combinable'] = nil,  	['description'] = 'A refreshing glass of lemonade!'},
    ['glass_water']           		= {['name'] = 'glass_water',             		['label'] = 'Glass of Water',    		['weight'] = 200,       ['type'] = 'item',      ['image'] = 'glass_water.png',        			['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    		['combinable'] = nil,  	['description'] = 'A refreshing glass of water!'},
    ['cup_coffee']                	= {['name'] = 'cup_coffee',                		['label'] = 'Cup of Coffee',            ['weight'] = 200,       ['type'] = 'item',      ['image'] = 'cup_coffee.png',            		['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    		['combinable'] = {accept = {'glass_whiskey'}, reward = 'irishcoffee', anim = {['dict'] = 'anim@amb@clubhouse@bar@drink@one', ['lib'] = 'one_bartender', ['text'] = 'Making Irish Coffee..', ['timeOut'] = math.random(3550,6500)}},   ['description'] = 'A cup of coffee.'},
	['cup_tea']                	 	= {['name'] = 'cup_tea',                		['label'] = 'Cup of Tea',               ['weight'] = 200,       ['type'] = 'item',      ['image'] = 'cup_tea.png',            			['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    		['combinable'] = nil,   ['description'] = 'A cup of tea.'},
	['milk'] 		             	= {['name'] = 'milk', 			            	['label'] = 'Milk', 	                ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'milk.png', 	            		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Milk good enough to drink!'},

	
	-- Food
	['ajibento'] 		     	 	= {['name'] = 'ajibento', 						['label'] = 'Aji Bento', 				['weight'] = 350, 		['type'] = 'item', 		['image'] = 'ajibento.png', 	   				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Aji bento box..'},
	['inadabento'] 		     	 	= {['name'] = 'inadabento', 					['label'] = 'Inada Bento', 				['weight'] = 350, 		['type'] = 'item', 		['image'] = 'inadabento.png', 	   				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Inada bento box..'},
	['akoudaibento'] 		     	= {['name'] = 'akoudaibento', 					['label'] = 'Akou-Dai Bento', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 'akoudaibento.png', 	   			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Akou-dai bento box..'},
	['katsubento'] 		     	 	= {['name'] = 'katsubento', 					['label'] = 'Katsu Chicken Bento', 		['weight'] = 350, 		['type'] = 'item', 		['image'] = 'katsubento.png', 	   				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Katsu chicken bento box..'},
	['chashubento'] 		     	= {['name'] = 'chashubento', 					['label'] = 'Chashu Bento', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 'chashubento.png', 	   				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Chashu pork bento box..'},
	['iwashiramen'] 		     	= {['name'] = 'iwashiramen', 					['label'] = 'Iwashi Ramen', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 'iwashiramen.png', 	   				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Iwashi ramen bowl..'},
	['ajiramen'] 		     	 	= {['name'] = 'ajiramen', 						['label'] = 'Aji Ramen', 				['weight'] = 350, 		['type'] = 'item', 		['image'] = 'ajiramen.png', 	   				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	  	 	['combinable'] = nil,   ['description'] = 'Aji ramen bowl..'},
	['ohyouramen'] 		     	 	= {['name'] = 'ohyouramen', 					['label'] = 'O-hyou Ramen', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 'ohyouramen.png', 	   				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'O-hyou ramen bowl..'},
	['chickenramen'] 		     	= {['name'] = 'chickenramen', 					['label'] = 'Chicken Ramen', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 'chickenramen.png', 	   			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Chicken ramen bowl..'},
	['beeframen'] 		     	 	= {['name'] = 'beeframen', 						['label'] = 'Beef Ramen', 				['weight'] = 350, 		['type'] = 'item', 		['image'] = 'beeframen.png', 	   				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Beef ramen bowl..'},
	['akoudaisushi'] 		     	= {['name'] = 'akoudaisushi', 					['label'] = 'Akou-dai Sushi', 			['weight'] = 320, 		['type'] = 'item', 		['image'] = 'akoudaisushi.png', 	   			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Akou-Dai sushi..'},
	['inadasushi'] 		     	 	= {['name'] = 'inadasushi', 					['label'] = 'Inada Sushi', 				['weight'] = 320, 		['type'] = 'item', 		['image'] = 'inadasushi.png', 	   				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Inada sushi..'},
	['iwashisushi'] 		     	= {['name'] = 'iwashisushi', 					['label'] = 'Iwashi Sushi', 			['weight'] = 320, 		['type'] = 'item', 		['image'] = 'iwashisushi.png', 	   				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Iwashi sushi..'},
	['guchisushi'] 		     	 	= {['name'] = 'guchisushi', 					['label'] = 'Ishimochi Guchi Sushi', 	['weight'] = 320, 		['type'] = 'item', 		['image'] = 'guchisushi.png', 	   				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Ishimochi guchi sushi..'},
	['ohyousushi'] 		     	 	= {['name'] = 'ohyousushi', 					['label'] = 'O-hyou Sushi', 			['weight'] = 320, 		['type'] = 'item', 		['image'] = 'ohyousushi.png', 	   				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'O-hyou sushi..'},
	['ajisashimi'] 		     	 	= {['name'] = 'ajisashimi', 					['label'] = 'Aji Sashimi', 				['weight'] = 320, 		['type'] = 'item', 		['image'] = 'ajisashimi.png', 	   				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Aji sashimi..'},
	['akoudaisashimi'] 		    	= {['name'] = 'akoudaisashimi', 				['label'] = 'Akou-dai Sashimi', 		['weight'] = 320, 		['type'] = 'item', 		['image'] = 'akoudaisashimi.png', 	   			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Akou-dai sashimi..'},
	['ohyousashimi'] 		     	= {['name'] = 'ohyousashimi', 					['label'] = 'O-hyou Sashimi', 			['weight'] = 320, 		['type'] = 'item', 		['image'] = 'ohyousashimi.png', 	   			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'O-hyou sashimi..'},
	['beefsashimi'] 		     	= {['name'] = 'beefsashimi', 					['label'] = 'Beef Sashimi', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 'beefsashimi.png', 	   				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Beef sashimi..'},
	['deersashimi'] 		     	= {['name'] = 'deersashimi', 					['label'] = 'Venison Sashimi', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 'deersashimi.png', 	   				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Venison sashimi..'},
	['nishdaifuki'] 		    	= {['name'] = 'nishdaifuki', 					['label'] = 'Nishigashi Daifuku', 		['weight'] = 150, 		['type'] = 'item', 		['image'] = 'nishdaifuki.png', 	   				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Nishigashi daifuki..'},
	['kurodaifuku'] 		     	= {['name'] = 'kurodaifuku', 					['label'] = 'Kuromame Daifuku', 		['weight'] = 150, 		['type'] = 'item', 		['image'] = 'kurodaifuku.png', 	   				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Kuromame daifuku..'},
	['mitadango'] 		     	 	= {['name'] = 'mitadango', 						['label'] = 'Mitarashi Dango', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'mitadango.png', 	   				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Mitarashi dango..'},
	['matchacrepe'] 		     	= {['name'] = 'matchacrepe', 					['label'] = 'Matcha Mille', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'matchacrepe.png', 	   				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Matcha mille crepe..'},
	['mizuyokan'] 		     		= {['name'] = 'mizuyokan', 						['label'] = 'Mizu Yokan', 				['weight'] = 120, 		['type'] = 'item', 		['image'] = 'mizuyokan.png', 	   				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   		['combinable'] = nil,   ['description'] = 'Mizu yokan..'},
	

### JOB INFO ###

	['uwu'] = {
		label = 'UwU Cafe',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 50
            },
			['1'] = {
                name = 'Server',
                payment = 75
            },
			['2'] = {
                name = 'Chef',
                payment = 100
            },
			['3'] = {
                name = 'Head Chef',
                payment = 125
            },
			['4'] = {
                name = 'Assistant Manager',
                payment = 175
            },
			['5'] = {
                name = 'Manager',
				isboss = true,
                payment = 200
            },
			['6'] = {
                name = 'Owner',
				isboss = true,
                payment = 225
            },
        },
	},
	
### PREVIEW ###
COMING SOON

### SUPPORT ### 
https://discord.gg/MUckUyS5Kq