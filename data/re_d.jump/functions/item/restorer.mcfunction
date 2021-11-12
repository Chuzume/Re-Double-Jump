
#接触時
execute unless entity @s[scores={C.Cape_R.CT=0..}] positioned ~-0.5 ~ ~-0.5 if entity @a[dx=0] run playsound minecraft:block.glass.break neutral @a ~ ~ ~ 1.5 1
execute unless entity @s[scores={C.Cape_R.CT=0..}] positioned ~-0.5 ~ ~-0.5 if entity @a[dx=0] run playsound minecraft:entity.experience_orb.pickup neutral @a ~ ~ ~ 1.5 1.5
execute unless entity @s[scores={C.Cape_R.CT=0..}] positioned ~-0.5 ~ ~-0.5 if entity @a[dx=0] run particle minecraft:firework ~0.5 ~0.5 ~0.5 0 0 0 0.1 5
execute unless entity @s[scores={C.Cape_R.CT=0..}] positioned ~-0.5 ~ ~-0.5 if entity @a[dx=0] run item replace entity @s armor.head with air
execute unless entity @s[scores={C.Cape_R.CT=0..}] positioned ~-0.5 ~ ~-0.5 run item replace entity @a[nbt={Inventory: [{Slot: 102b, tag: {ItemName: Celestial_Feather}}]},dx=0] armor.chest with minecraft:elytra{display: {Name: '{"text":"Celestial Feather","color":"aqua","italic":false}', Lore: ['{"text":" "}', '{"text":"[Passive: Fall Resist,Jump Boost]","color":"white","italic":false}', '{"text":"[Jump: Double Jump]","color":"white","italic":false}', '{"text":" "}', '{"text":"\\"大丈夫、きっとやりとげられる\\"","color":"white","italic":false}']}, HideFlags: 5, RepairCost: -1000, Unbreakable: 1b, ItemName: Celestial_Feather, Enchantments: [{id: "minecraft:unbreaking", lvl: 1s}], CustomModelData: 1} 1

#最後にクールダウン発生
execute unless entity @s[scores={C.Cape_R.CT=0..}] positioned ~-0.5 ~ ~-0.5 if entity @a[dx=0] run scoreboard players set @s C.Cape_R.CT 0
scoreboard players add @s[scores={C.Cape_R.CT=0..}] C.Cape_R.CT 1

#パーティクル
execute unless entity @s[scores={C.Cape_R.CT=0..}] run particle instant_effect ~ ~0.5 ~ 0.25 0.25 0.25 0 1
execute if entity @s[scores={C.Cape_R.CT=0..}] run particle minecraft:dust 0.5 1 0.5 1 ~ ~0.5 ~ 0 0 0 1 1

#くるくる
tp @s ~ ~ ~ ~5 ~

#クールダウン終了
execute if entity @s[scores={C.Cape_R.CT=80..}] run particle minecraft:firework ~ ~0.5 ~ 0 0 0 0.1 5
execute if entity @s[scores={C.Cape_R.CT=80..}] run playsound minecraft:entity.experience_orb.pickup neutral @a ~ ~ ~ 1.5 1.5
execute if entity @s[scores={C.Cape_R.CT=80..}] run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 1.5 2
execute if entity @s[scores={C.Cape_R.CT=80..}] run item replace entity @s armor.head with lime_stained_glass
scoreboard players reset @s[scores={C.Cape_R.CT=80..}] C.Cape_R.CT