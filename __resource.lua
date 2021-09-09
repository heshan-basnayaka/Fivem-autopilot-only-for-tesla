resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'
description 'Tesla Autopilot only for specific vehicle class (Tesla) Remastered By 3UR3K4 ( Heshan Basnayaka)'

-- edit "autopilot_config.lua" to change spesific vehicle spawn codes"

client_scripts {
    'autopilot_client.lua',
    'autopilot_config.lua',
    'autopilot_library.lua',
}
server_scripts {
    'autopilot_server.lua',
}
