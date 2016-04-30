
local world_recipes = {};

------------------------------------------------------------------

local c = require('c');

------------------------------------------------------------------

local world_recipe_flowers = function()

	local index = 0;

	local world_recipe = {};

	world_recipe.starting_point = {};
	world_recipe.frame = {};
	world_recipe.objects = {};

	------------------------------------------------------------------
	
	world_recipe.frame = {};
	world_recipe.frame.width = 2214 * 1.5;
	world_recipe.frame.height = 1819 * 1.5;
	world_recipe.frame.x = 0;
	world_recipe.frame.y = 0;

	world_recipe.frame.left = world_recipe.frame.x - world_recipe.frame.width / 2;
	world_recipe.frame.right = world_recipe.frame.x + world_recipe.frame.width / 2;
	world_recipe.frame.top = world_recipe.frame.y - world_recipe.frame.height / 2;
	world_recipe.frame.bottom = world_recipe.frame.y + world_recipe.frame.height / 2;

	------------------------------------------------------------------

	world_recipe.camera_mode 	 		  = c.BOX;
	world_recipe.camera_target_position_x = c.HALF_SCREEN_WIDTH;
	world_recipe.camera_target_position_y = c.HALF_SCREEN_HEIGHT;

	------------------------------------------------------------------

	world_recipe.messages = {};

	world_recipe.messages[1] =  {
	                    			'Hadde håpet jeg havnet på fjøddet. Men, men...'
	                			};

	------------------------------------------------------------------

	world_recipe.objects[index + 1] = {file = 'crystals_c.jpg', perspective_factor = 0.6, ppx = 0, ppy = 0, width = 3508 * 0.6, height = 2480 * 0.6, x = 0, y = 0}

	index = index + 1;

	world_recipe.objects[index + 1] = {file = 'world_flowers_c.png', body = NONE, width = 2527 * 1.5, height = 1819 * 1.5, x = 0, y = 0 };	
	world_recipe.objects[index + 2] = {file = 'world_flowers_color.png', id = 1, invisible = true, body = NONE, width = 2614, height = 1819, x = 0, y = 0 };	

	index = index + 2;

	world_recipe.objects[index + 1] = {file = 'carniv_1.png', perspective_factor = -1.01, ppx = 400, ppy = 1300, width = 1028, height = 1028, x = 400, y = 1000}
	world_recipe.objects[index + 2] = {file = 'carniv_2.png', invisible = true, perspective_factor = -1.01, ppx = 400, ppy = 1300, width = 1028, height = 1028, x = 400, y = 1000}
	world_recipe.objects[index + 3] = {file = 'carniv_3.png', invisible = true, perspective_factor = -1.01, ppx = 400, ppy = 1300, width = 1028, height = 1028, x = 400, y = 1000}
	world_recipe.objects[index + 4] = {file = 'carniv_closed_b.png', invisible = true, perspective_factor = -1.01, ppx = 400, ppy = 1300, width = 1028, height = 1028, x = 400, y = 1000}
	world_recipe.objects[index + 5] = {file = 'carniv_closed_f.png', invisible = true, front_object = true, perspective_factor = -1.01, ppx = 400, ppy = 1300, width = 1028, height = 1028, x = 400, y = 1000}
	world_recipe.objects[index + 6] = {rectangle = true, body = c.CARNIV, invisible = true, width = 50, height = 300, fill_color = {0, 0, 1}, x = 350,  y = 900, im2_time = 30, im3_time = 60, closed_time = 90, eat_time = 200, counter = 0, im_1 = index + 1, im_2 = index + 2, im_3 = index + 3, closed_back = index + 4, closed_front = index + 5};

	index = index + 6;

	world_recipe.objects[index + 1] = {rectangle = true, event = {type = c.ACTIVATOR}, link = 1, invisible = true, alpha = 0.4, message_index = 3, width = 400, height = 200, fill_color = {0, 0, 1}, x = -100,  y = 800};

	index = index + 1;

	world_recipe.objects[index + 1] = {rectangle = true, body = c.MESSAGE, invisible = true, alpha = 0.4, message_index = 1, width = 400, height = 400, fill_color = {0, 0, 1}, x = 0,  y = 0};

	return world_recipe;
end

------------------------------------------------------------------

local world_recipe_balloon = function()

	local index = 0;

	local world_recipe = {};

	world_recipe.starting_point = {};
	world_recipe.frame = {};
	world_recipe.objects = {};

	------------------------------------------------------------------

	world_recipe.starting_point.x = 100;
	world_recipe.starting_point.y = 250;

	------------------------------------------------------------------
	
	world_recipe.frame.width = 3856 * 0.8;
	world_recipe.frame.height = 3856 * 0.8;
	world_recipe.frame.x = 0;
	world_recipe.frame.y = 0;

	world_recipe.frame.left = world_recipe.frame.x - world_recipe.frame.width / 2;
	world_recipe.frame.right = world_recipe.frame.x + world_recipe.frame.width / 2;
	world_recipe.frame.top = world_recipe.frame.y - world_recipe.frame.height / 2;
	world_recipe.frame.bottom = world_recipe.frame.y + world_recipe.frame.height / 2;

	------------------------------------------------------------------

	world_recipe.camera_mode 	 		  = c.SIMPLE;
	world_recipe.camera_target_position_x = c.HALF_SCREEN_WIDTH;
	world_recipe.camera_target_position_y = c.HALF_SCREEN_HEIGHT;

	------------------------------------------------------------------

	world_recipe.messages = {};

	world_recipe.messages[1] =  {
	                    			'Hadde jeg levd lenger enn et døgn så skulle jeg ha flydd en av disse ballongene.'
	                			};
	world_recipe.messages[2] =  {
	                   			 	'Jeg tror jeg ser et fyrtårn der borte!',
	                    			'Skal vi dra dit?'
	                			};
	world_recipe.messages[3] =  {
	                    			'Wow! Et svevende hus!',
	                    			'Nok om meg, opplever du noe spennende?'
	                			};

	------------------------------------------------------------------
	
	world_recipe.objects[index + 1] = {file = 'world_bw.png', body = NONE, width = 2856 * 0.8, height = 2856 * 0.8, x = 0, y = 0 };

	world_recipe.objects[index + 2] = {file = 'balloon_1.png', event = {type = c.BALLOON, offset = {x = -100, y = -200}}, width = 300 * 0.8, height = 300 * 0.8, x = -760, y = -150 };
	world_recipe.objects[index + 3] = {file = 'balloon_2.png', event = {type = c.BALLOON, offset = {x = -20, y = -200}}, width = 127 * 0.8, height = 138 * 0.8, x = 930, y = -200 };
	world_recipe.objects[index + 4] = {file = 'balloon_3.png', event = {type = c.BALLOON, offset = {x = -20, y = -200}}, width = 151 * 0.8, height = 173 * 0.8, x = 1000, y = -220 };
	world_recipe.objects[index + 5] = {file = 'balloon_3.png', event = {type = c.BALLOON, offset = {x = 100, y = -150}}, width = 151 * 0.8, height = 173 * 0.8, x = 100, y = -650 };
	world_recipe.objects[index + 6] = {file = 'balloon_2.png', event = {type = c.BALLOON, offset = {x = -150, y = 60}}, width = 127 * 0.8, height = 138 * 0.8, x = 150 + 150, y = 550 - 60 };

	index = index + 6;

	world_recipe.objects[index + 1] = {file = 'fish.png', id = 1, width = 400 * 0.8, height = 400 * 0.8, x = -200 + 100, y = 980 };
	world_recipe.objects[index + 2] = {file = 'wave.png', event = {type = c.WAVE}, link = 1, width = 400 * 0.8, height = 400 * 0.8, x = -200 + 100, y = 980 };

	world_recipe.objects[index + 3] = {file = 'fish.png', id = 2, width = 400 * 0.8, height = 400 * 0.8, x = -80 + 440, y = 720 };
	world_recipe.objects[index + 4] = {file = 'wave.png', event = {type = c.WAVE}, link = 2, width = 400 * 0.8, height = 400 * 0.8, x = -80 + 440, y = 720 };

	world_recipe.objects[index + 5] = {file = 'fish.png', id = 3, width = 400 * 0.8, height = 400 * 0.8, x = -200 + 200, y = 830 };
	world_recipe.objects[index + 6] = {file = 'wave.png', event = {type = c.WAVE}, link = 3, width = 400 * 0.8, height = 400 * 0.8, x = -200 + 200, y = 830 };

	world_recipe.objects[index + 7] = {file = 'fish.png', id = 4, width = 400 * 0.8, height = 400 * 0.8, x = -200 + -100, y = 920 };
	world_recipe.objects[index + 8] = {file = 'wave.png', event = {type = c.WAVE}, link = 4, width = 400 * 0.8, height = 400 * 0.8, x = -200 + -100, y = 920 };

	index = index + 8;

	world_recipe.objects[index + 1] = {file = 'lighthouse_light.png', id = 50, invisible = true, width = 606 * 0.8, height = 600 * 0.8, x = 990, y = 290 };
	world_recipe.objects[index + 2] = {file = 'lighthouse.png', event = {type = c.ACTIVATOR}, link = 50, width = 294 * 0.8, height = 283 * 0.8, x = 1000, y = 290 };

	index = index + 2;

	world_recipe.objects[index + 1] = {rectangle = true, body = c.MESSAGE, invisible = true, alpha = 0.4, message_index = 1, width = 400, height = 400, fill_color = {0, 0, 1}, x = 0,  y = 100};
	world_recipe.objects[index + 2] = {rectangle = true, body = c.MESSAGE, invisible = true, alpha = 0.4, message_index = 2, width = 200, height = 1000, fill_color = {0, 0, 1}, x = 500,  y = 400};
	world_recipe.objects[index + 3] = {rectangle = true, body = c.MESSAGE, invisible = true, alpha = 0.4, message_index = 3, width = 500, height = 700, fill_color = {0, 0, 1}, x = -500,  y = -400};

	index = index + 3;

	-- Portals in circle around

	n = 40;
	N = 4;

	for i = 1, n do
		
		theta = i / n * 2 * math.pi;
		r 	  = 50 + 3600 * 0.8 * 0.5 - 150;

		for j = 0, N do
			world_recipe.objects[index + i + (j * n)] = {file = 'portal.png', body = c.PORTAL, r = (r + 150 * j), start_theta = theta, event = {type = c.PORTAL, world_name = c.WORLD_FLOWERS, allow_collision = (j > 0)}, width = 127 * 0.8, height = 138 * 0.8, x = (r + 150 * j) * math.cos(theta), y = (r + 150 * j) * math.sin(theta) };
		end 
	end

	index = index + n * (N + 1);

	return world_recipe;
end

------------------------------------------------------------------

function world_recipes:get(world_name)

	if (world_name == c.WORLD_BALLOON) then
		return world_recipe_balloon();
	else
		return world_recipe_flowers();
	end
end

------------------------------------------------------------------

return world_recipes;