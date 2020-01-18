--"commands" acceses the LuaCommandProcessor
--"add_command" takes in three parameters (name -> string, help -> string, function)

function foo(tableIn) --Event pass a table into the function

	--game.get_player() returns a LuaPlayer object
	local player = game.get_player(tableIn.player_index)

	local color = {r=1, g=0, b=0, a=1}

	--print a message to just the player who sent it
	player.print("Hello there! This is a private message to: " .. player.name, color)

	--game.print() would print a message to all players -> LuaGameScript
	game.print("This is a global message to all players")

end

commands.add_command("say_hello", "This is a help message", foo)


--[[
LuaGameScript Documentation:
	https://lua-api.factorio.com/latest/LuaGameScript.html
	or
	..\Steam\steamapps\common\Factorio\doc-html\LuaGameScript.html

LuaCommandProcessor Documentation:
	https://lua-api.factorio.com/latest/LuaCommandProcessor.html
	or
	..\Steam\steamapps\common\Factorio\doc-html\LuaCommandProcessor.html

LuaPlayer Documentation:
	https://lua-api.factorio.com/latest/LuaPlayer.html
	or
	..\Steam\steamapps\common\Factorio\doc-html\LuaPlayer.html
]]