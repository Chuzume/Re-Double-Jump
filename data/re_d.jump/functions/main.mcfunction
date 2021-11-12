
#二段ジャンプ補給ポイント
execute as @e[tag=Re_D.Jump_Restorer] at @s if entity @a[distance=..30] run function re_d.jump:item/restorer

#ポイント設置/撤去
execute as @e[type=potion,nbt={Item:{tag:{ItemName:Re_Place_Jump_Restorer}}}] at @s run function re_d.jump:item/place_restorer

#装備してる奴に実行
execute as @a[nbt={Inventory:[{Slot:102b,tag:{ItemName:Celestial_Feather}}]}] at @s run function re_d.jump:item/c.cape

#スライム処理
scoreboard players add @e[tag=Re_D.Jump_Slime] C.Cape_Remove 1
execute as @e[tag=Re_D.Jump_Slime,scores={C.Cape_Remove=2..}] at @s run tp @s ~ ~-1000 ~
kill @e[tag=Re_D.Jump_Slime,scores={C.Cape_Remove=2..}]

#スコアリセット
scoreboard players reset @a[scores={C.Cape_Elytra=0..}] C.Cape_Elytra
scoreboard players reset @a[scores={C.Cape_Sneak=0..}] C.Cape_Sneak

#クラフト
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:feather",Count:1b},{Slot:2b,id:"minecraft:feather",Count:1b},{Slot:3b,id:"minecraft:feather",Count:1b},{Slot:4b,id:"minecraft:leather_chestplate",Count:1b,tag:{Damage:0}},{Slot:5b,id:"minecraft:feather",Count:1b},{Slot:6b,id:"minecraft:gold_ingot",Count:1b},{Slot:7b,id:"minecraft:diamond",Count:1b},{Slot:8b,id:"minecraft:gold_ingot",Count:1b}]} run function re_d.jump:c.crafter/celestial_cape