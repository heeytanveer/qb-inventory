resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

description 'QBinvenotry'

shared_scripts {
	'config.lua',
	--'@qb-core/import.lua',
	'@qb-weapons/config.lua'
}

server_script 'server/main.lua'
client_scripts {
	'client/*.lua'
} 

ui_page {
	'html/ui.html'
}

files {
	'html/ui.html',
	'html/css/main.css',
	'html/js/app.js',
	'html/images/*.png',
	'html/images/*.jpg',
	'html/extra_images/*.png',
	'html/ammo_images/*.png',
	'html/attachment_images/*.png',
	'html/*.ttf',
	'html/*.png',
	'html/cloth/*.png',
	'html/cloth/*.svg',
}

dependency 'qb-weapons' 
