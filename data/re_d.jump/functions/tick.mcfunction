
# 二段ジャンプ補給ポイント
    execute as @e[tag=Re_D.Jump_Restorer] at @s if entity @a[distance=..30] run function re_d.jump:item/restorer

# ポイント設置/撤去
    execute as @e[type=potion,nbt={Item:{tag:{ItemName:Re_Place_Jump_Restorer}}}] at @s run function re_d.jump:item/place_restorer

# ストレージ
    execute as @a at @s run function re_d.jump:storage

# スライム
    execute as @e[type=slime,tag=Re_D.Jump_Slime] at @s run function re_d.jump:entity/col_slime/main

# スコアリセット
    scoreboard players reset @a[scores={C.Cape_Elytra=0..}] C.Cape_Elytra
