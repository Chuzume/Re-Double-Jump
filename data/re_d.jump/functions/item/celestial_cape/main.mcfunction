
# ジャンプブースト
    effect give @s jump_boost 1 1 true

# ゴリ押しで着地ダメージ無効化
    scoreboard players add @s[nbt={OnGround:0b}] C.Cape_F.Resist 1
    execute if entity @s[scores={C.Cape_F.Resist=3..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:28b,Amplifier:0b,Duration:2,ShowParticles:0b}]}
    scoreboard players reset @s[scores={C.Cape_F.Resist=3..}] C.Cape_F.Resist
    scoreboard players reset @s[nbt={OnGround:1b}] C.Cape_F.Resist

# パーティクル
    execute if entity @s[tag=!Re_D.Jump_Used] run particle minecraft:dust 1 0.5019607843137255 0.5019607843137255 1 ~ ~0.1 ~ 0.25 0 0.25 0 1
    execute if entity @s[tag=Re_D.Jump_Used] run particle minecraft:dust 0.5 1 1 1 ~ ~0.1 ~ 0.25 0 0.25 0 1

# ウォールラッチ
    execute if entity @s[tag=!Re_D.Jump_Latching] positioned ~ ~1.67 ~ rotated ~ 0 unless block ^ ^ ^0.5 #re_d.jump:wall_latch run tp @s @s
    execute if entity @s[tag=!Re_D.Jump_Latching] positioned ~ ~1.67 ~ rotated ~ 0 unless block ^ ^ ^0.5 #re_d.jump:wall_latch run tag @s add Re_D.Jump_Latching
    execute if entity @s[tag=!Re_D.Jump_Latching,tag=Re_D.Jump_Used] positioned ~ ~1.67 ~ rotated ~ 0 unless block ^ ^ ^0.5 #re_d.jump:wall_latch run tag @s add Re_D.Jump_Used
    execute if entity @s[nbt={OnGround:0b}] positioned ~ ~1.67 ~ rotated ~ 0 unless block ^ ^ ^0.5 #re_d.jump:wall_latch run particle dust 0.5 0.5 0.5 0.25 ^ ^ ^0.1 0 0 0 0 1
    execute if entity @s[nbt={OnGround:0b}] positioned ~ ~1.67 ~ rotated ~ 0 unless block ^ ^ ^0.5 #re_d.jump:wall_latch run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:28b,Amplifier:0b,Duration:6,ShowParticles:0b}]}

# ウォールラッチ解除
    execute if entity @s[tag=Re_D.Jump_Latching] positioned ~ ~1.67 ~ rotated ~ 0 if block ^ ^ ^0.5 #re_d.jump:wall_latch run tag @s remove Re_D.Jump_Latching

# 壁キック時は無理やり回復する
    execute if entity @s[tag=Re_D.Jump_Used] positioned ~ ~1.67 ~ rotated ~ 0 unless block ^ ^ ^-1 #re_d.jump:wall_latch run item replace entity @s armor.chest with minecraft:elytra{display: {Name: '{"text":"Celestial Feather","color":"aqua","italic":false}', Lore: ['{"text":" "}', '{"text":"[Passive: Fall Resist,Jump Boost]","color":"white","italic":false}', '{"text":"[Jump: Double Jump]","color":"white","italic":false}', '{"text":" "}', '{"text":"\\"大丈夫、きっとやりとげられる\\"","color":"gray","italic":false}']}, HideFlags: 5, RepairCost: -1, Unbreakable: 1b, ItemName: Celestial_Feather, ItemMode: Re_D.Jump_Wall, Enchantments: [{id: "minecraft:binding_curse", lvl: 1s}], CustomModelData: 1} 1

# 壁キック
    execute if entity @s[scores={C.Cape_Elytra=0..}] positioned ~ ~1.67 ~ rotated ~ 0 unless block ^ ^ ^-1 #re_d.jump:wall_latch at @s run function re_d.jump:item/celestial_cape/wall_jump

# 空中ジャンプ
    execute if entity @s[tag=!Re_D.Jump_Used,scores={C.Cape_Elytra=0..}] positioned ~ ~1.67 ~ rotated ~ 0 if block ^ ^ ^-1 #re_d.jump:wall_latch at @s run function re_d.jump:item/celestial_cape/double_jump

# 使用後に着地すると回復、ただしウォールラッチしてないとき
    execute if entity @s[tag=Re_D.Jump_Used,tag=!Re_D.Jump_Latching,nbt={OnGround:1b}] run function re_d.jump:item/celestial_cape/recharge

# 二段ジャンプせずに壁蹴った場合
    execute if entity @s[tag=!Re_D.Jump_Used,scores={C.Cape_Wait=0..}] run function re_d.jump:item/celestial_cape/wall_wait

# 壁キックしないなら没収
    execute if entity @s[tag=Re_D.Jump_Used] rotated ~ 0 if block ^ ^ ^-1 #re_d.jump:wall_latch run item replace entity @s armor.chest with minecraft:elytra{Damage: 431, display: {Name: '{"text":"Celestial Feather","color":"aqua","italic":false}', Lore: ['{"text":" "}', '{"text":"[Recharging!]","color":"white","italic":false}', '{"text":" "}', '{"text":"\\"大丈夫、きっとやりとげられる\\"","color":"gray","italic":false}']}, HideFlags: 5, Unbreakable: 1b, ItemName: Celestial_Feather, ItemMode: Re_D.Jump_Used, Enchantments: [{id: "minecraft:binding_curse", lvl: 1s}], CustomModelData: 1} 1

# 空中移動がキレイ
    execute if entity @s[nbt={OnGround:0b}] positioned ~ ~1.67 ~ rotated ~ 0 if block ^ ^ ^0.5 #re_d.jump:wall_latch run particle instant_effect ~ ~-1.67 ~ 0 0 0 0 1
