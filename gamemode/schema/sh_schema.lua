SCHEMA.name = "Sample"
SCHEMA.author = "Chessnut"
SCHEMA.desc = "An example schema that is very basic."
SCHEMA.uniqueID = "sample" -- Schema will be a unique identifier stored in the database.
-- Using a uniqueID will allow for renaming the schema folder.

-- Configure some stuff specific to this schema.
nut.currency.SetUp("bean", "beans")
nut.config.menuMusic = "http://7609.live.streamtheworld.com:80/977_SMOOJAZZ_SC"

nut.util.Include("sv_hooks.lua")