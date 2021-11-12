
scoreboard players remove @s C.Cape_Recursive 1
summon slime ^ ^ ^-0.35 {Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:emptyy",NoAI:1b,Tags:["Re_D.Jump_Slime"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999,ShowParticles:0b}]}
execute if score @s C.Cape_Recursive matches 0.. run function re_d.jump:item/celestial_cape/summon_recursive