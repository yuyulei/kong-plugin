package = "kong-plugin-helloworld"
version = "0.0.1-1"

local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "helloworld"

supported_platforms = {"linux", "macosx"}
source = {
  url = "http://github.com:yuyulei/kong-plugin.git",
  branch = "master"
}

description = {
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  homepage = "http://getkong.org",
  license = "Apache 2.0"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    -- TODO: add any additional files that the plugin consists of
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}
