summon minecraft:chest_minecart ~ ~99999 ~ {DisplayState:{Name:"minecraft:dragon_head"},NoGravity:true,Invulnerable:true,Tags:["bs_menu_container"],CustomName:[{"text":"     ʙɪɢꜱᴛᴏɴᴇ ꜱᴀɴᴅʙᴏx ᴍᴇɴᴜ","italic":false,"color":"dark_gray"}],Silent:true}
execute at @s run schedule function bigstone_sandbox:menu/minecart/rotate_init 2t
execute as @e[distance=..5,tag=bs_menu_container] run function bigstone_sandbox:menu/container/slots

effect give @s blindness infinite 255 true