package = "devtools"
version = "1.0.0-0"
source = {
   url = "http://example.org/package.tar.gz"
}
description = {
   summary = "Tools to make your life as a Lua developer more pleasant",
   homepage = "http://luaforge.net",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "module",
   modules = {
      ["devtools.ilua"]     = "ilua.lua",
      ["devtools.readline"] = {
        sources   = {"readline.c"},
        libraries = {"readline"}
      },
      ["devtools.debugger"] = "debugger.lua"
   },
   install = {
     bin = {
       ilua = "ilua"
     }
   }
}