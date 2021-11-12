#使用
execute if entity @e[tag=Re_D.Jump_Restorer,distance=..2] run tag @s add Re_D.Jump_NoPlace
execute if entity @e[tag=Re_D.Jump_Restorer,distance=..2] run kill @e[tag=Re_D.Jump_Restorer,limit=1,sort=nearest]
execute unless entity @s[tag=Re_D.Jump_NoPlace] at @p align xyz run summon minecraft:armor_stand ~0.5 ~0.5 ~0.5 {Marker:1b,NoGravity:1b,Fire:0,Small:1b,Invisible:1b,Tags:["Re_D.Jump_Restorer"],Pose:{Head:[180f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:lime_stained_glass",Count:1b}]}

#自壊
data merge entity @s {Motion:[0.0,0.0,0.0]}
kill @s