scoreboard players remove @s C.Cape_Wait 1
execute if entity @s[scores={C.Cape_Wait=..0}] run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1
execute if entity @s[scores={C.Cape_Wait=..0}] run item replace entity @s armor.chest with minecraft:elytra{display: {Name: '{"text":"Celestial Feather","color":"aqua","italic":false}', Lore: ['{"text":" "}', '{"text":"[Passive: Fall Resist,Jump Boost]","color":"white","italic":false}', '{"text":"[Jump: Double Jump]","color":"white","italic":false}', '{"text":"[Sneak: Air dash]","color":"white","italic":false}', '{"text":" "}', '{"text":"\\"大丈夫、きっとやりとげられる\\"","color":"gray","italic":false}']}, HideFlags: 5, RepairCost: -1, Unbreakable: 1b, ItemName: Celestial_Feather, CustomModelData: 1} 1
scoreboard players reset @s[scores={C.Cape_Wait=..0}] C.Cape_Wait