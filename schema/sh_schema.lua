SCHEMA.name = "Sample";
SCHEMA.author = "Casadis";
SCHEMA.desc = "An example schema that is very basic.";
SCHEMA.uniqueID = "sample"; -- Schema will be a unique identifier stored in the database.
-- Using a uniqueID will allow for renaming the schema folder.

nut.util.include("sh_config.lua");

nut.util.includeDir("hooks");