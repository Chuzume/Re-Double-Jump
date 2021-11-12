# まぁまずはアイテムが必要であろう
    give @p minecraft:elytra{display:{Name:'{"text":"Celestial Feather","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[Passive: Fall Resist,Jump Boost]","color":"white","italic":false}','{"text":"[Jump: Double Jump]","color":"white","italic":false}','{"text":" "}','{"text":"\\"大丈夫、きっとやりとげられる\\"","color":"gray","italic":false}']},HideFlags:5,RepairCost:-1000,Unbreakable:1b,ItemName:Celestial_Feather,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],CustomModelData:1} 1

# 次回以降も実行するためにレシピ没収
    recipe take @s cerest

# なんだこのチェストは！消えてもらおう
    clear @s chest 1

# 進捗消去
    advancement revoke @s only scoped_rifle:craft/grenade_launcher