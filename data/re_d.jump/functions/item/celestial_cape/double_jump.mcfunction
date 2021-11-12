
# 演出
    particle minecraft:poof ~ ~ ~ 0 0 0 0.1 5
    playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 1.5 2
    playsound minecraft:entity.goat.long_jump player @a ~ ~ ~ 2 1.3

# 落下速度リセットしてAECで打ち上げる
    tp @s @s
    summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:16b,Duration:6,ShowParticles:0b}]}

# 数を指定して当たり判定用のスライムをぶつける
    scoreboard players set @s C.Cape_Recursive 10
    execute rotated ~ 0 run function re_d.jump:item/celestial_cape/summon_recursive

# アイテム置き換え
    item replace entity @s armor.chest with minecraft:elytra{Damage: 431, display: {Name: '{"text":"Celestial Feather","color":"aqua","italic":false}', Lore: ['{"text":" "}', '{"text":"[Recharging!]","color":"white","italic":false}', '{"text":" "}', '{"text":"\\"大丈夫、きっとやりとげられる\\"","color":"gray","italic":false}']}, HideFlags: 5, Unbreakable: 1b, ItemName: Celestial_Feather, ItemMode: Re_D.Jump_Used, Enchantments: [{id: "minecraft:binding_curse", lvl: 1s}], CustomModelData: 1} 1

# タグ付与
    tag @s add Re_D.Jump_Used


#    execute if entity @s[tag=!Re_D.Jump_Used,tag=!Re_D.Jump_Wall] positioned ~ ~1.67 ~ rotated ~ 0 unless block ^ ^ ^-1 #re_d.jump:wall_latch run tag @s add Re_D.Jump_Wall_2