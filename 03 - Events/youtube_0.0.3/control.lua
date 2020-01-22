
function entity_placed(event)

	local player = game.get_player(event.player_index)
	local entity = event.created_entity

	--add random alert to confuse the player
	player.add_alert(entity, defines.alert_type.entity_destroyed)

end

local filters = {{filter="type", type="container"}}

script.on_event(defines.events.on_built_entity, entity_placed, filters) --link event to function

--[[

	All events defined:
	https://lua-api.factorio.com/latest/events.html

	Documentation for LuaBootstrap.on_event:
	https://lua-api.factorio.com/latest/LuaBootstrap.html#LuaBootstrap.on_event


]]

















--[[

function container_placed(event)
	--Add an in-game alert saying a container was placed
end

local filters = {{filter="type", type="container"}}
-- Gets raised whenever a player builds an entity
script.on_event(defines.events.on_built_entity, container_placed, filters) --link event to function
]]