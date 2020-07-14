fx_version 'bodacious'

game 'gta5'

description 'risky_selltonpc'

server_scripts {
    'Config.lua',
    '@async/async.lua',
    '@mysql-async/lib/MySQL.lua',
    
    'server/server.lua'
}

client_scripts {
    'Config.lua',
    'client/client.lua'
}
