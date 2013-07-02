--[[
	Here is an example plugin. An interesting thing about plugins is it's a way of modifying the
	framework or schema without directly editting the framework. That way, if the framework/schema
	were to ever update, all one needs to do is just overwrite the files and the plugins will stay
	intact, provided that it works if there were any changes to the way plugins worked.

	You might notice that the helloworld plugin is in one file. If you want to clean up your
	code and seperate it instead of mashing everything together in one file, you may do so.
	All you need to do is make a folder with sh_plugin.lua inside. If you want to include
	other files, you can use nut.util.Include(fileName). This utility function will include
	another file based off the prefix. You can also include other directories in your plugin
	(for example, if you had items) using nut.util.IncludeDir(directory)

	An example would be if our plugin folder looked like this:
		anotherplugin/
			items/
				sh_dirt.lua
			sh_plugin.lua

	Inside of sh_plugin.lua, call nut.util.IncludeDir("items") and items will be included.

	That about sums up all you need to know, but extra information can be found below.
--]]

-- We define a clean plugin name that will be displayed on a list of loaded plugins.
PLUGIN.name = "Hello World"

-- The author of the plugin will show up under the title.
PLUGIN.author = "Chessnut"

-- In addition, we also add the description to have people know what it does.
PLUGIN.desc = "Welcomes players to the server with a greeting."

--[[
	As you can see below, we have a hook. Just like we would define hooks in a gamemode or entity,
	like GM:PlayerDeath() or ENT:Draw(), we do the same except we use the PLUGIN table provided.
	All the hooks that are ever going to be called will also be passed to plugins before the
	schema/framework.
--]]
function PLUGIN:PlayerSpawn(client)
	client:ChatPrint("Hello "..client:Name().."!")
end