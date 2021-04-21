# 4-1
# 問１
p ["コーヒー", "カフェラテ"]

# 4-2
# 問２
drinks = ["コーヒー", "カフェラテ", "モカ"]
# 問３
p drinks[1]
# 問４
p drinks.first
p drinks.last
# 4-3
# 問５
p ["コーヒー", "カフェラテ"].push("モカ")
# 問６
p [2, 3].unshift(1)
# 問７
p [1, 2] + [3, 4]
# 4-4
# 問８
["ティーラテ", "カフェラテ", "抹茶ラテ"].map do |x|
  puts x
end
# 問９
["ティーラテ", "カフェラテ", "抹茶ラテ"].map do |x|
  puts "#{x}お願いします"
end
# 問１０
sum = 0
[1, 2, 3].each do |x|
  sum = sum + x
end
puts sum
# 問１１
sum = 0
[].each do |x|
  sum = sum + x
end
puts sum
