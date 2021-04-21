# 3-1
# 問１
a = 2
puts a < 365
# 問２
puts a == 1 + 1
# 3-2
# 問３
season = "春"
if season != "夏"
  puts "あんまん食べたい"
end
# 問４
season = "夏"
if season == "夏"
  puts "かき氷食べたい"
  puts "麦茶飲みたい"
end
# 3-3
# 問５
wallet = 100
if wallet >= 120
  puts "ジュース買おう"
else
  puts "お金で買えない幸せがたくさんあるんだ"
end
# 3-4
# 問６
x = 200
if x < 0 || x > 100
  puts "範囲外です"
end
# 問７
x = 0
y = -1
z = 1
if x > 0 || y > 0 || z > 0
  puts "正の数です"
end
# 3-5
# 問８
season = "春"
case season
when "春"
  puts "アイスを買っていこう！"
when "夏"
  puts "かき氷を買っていこう!"
else
  puts "あんまん買ってこう！"
end
# 3-6
# 問９
2.times do
  puts "カフェラテ"
  2.times do
    puts "モカ"
  end
end
puts "フラペチーノ"
