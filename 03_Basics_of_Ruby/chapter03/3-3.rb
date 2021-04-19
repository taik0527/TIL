# 条件を満たした時、満たさないときの２つに分岐する
wallet = 100
if wallet >= 300
  puts "コンビニでアイスを買っていこう！"
else
  puts "川沿いを散歩しよう！"
end

wallet = 500
if wallet >= 300
  puts "コンビニでアイスを買っていこう！"
else
  puts "川沿いを散歩しよう！"
end

# elsifと組み合わせたif
season = "夏"
if season == "春"
  puts "アイスを買っていこう！"
elsif season == "夏"
  puts "かき氷買ってこう！"
else
  puts "あんまん買ってこう！"
end
