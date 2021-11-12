scoreboard players add @s C.Cape_Remove 1
execute if entity @s[scores={C.Cape_Remove=2..}] at @s run tp @s ~ ~-1000 ~
kill @s[scores={C.Cape_Remove=2..}]