
fx_version 'adamant'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'


client_scripts {
    "bin/Debug/redemrp_fishing.net.dll"
}

server_scripts {
    '@AT_core/lib/utils.lua',
    "server.lua"
}
