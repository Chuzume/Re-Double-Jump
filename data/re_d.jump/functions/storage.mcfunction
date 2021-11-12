
# 取得
    data modify storage chuz:context Item.Chest set from entity @s Inventory[{Slot:102b}]

# マント
    execute if data storage chuz:context Item.Chest.tag{ItemName:Celestial_Feather} run function re_d.jump:item/celestial_cape/main

# 削除
    data remove storage chuz:context Item