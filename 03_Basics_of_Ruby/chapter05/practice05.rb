# 5-1
# 問１
p ["コーヒー", "カフェラテ"].size
# 問２
p [1, 2, 3, 4, 5].sum
# 5-2
# 問３
p ["モカ", "カフェラテ", "モカ"].uniq
# 問４
p ["モカ", "カフェラテ", "モカ"].clear
# 5-3
# 問５
p ["カフェラテ", "モカ", "カプチーノ"].sample
# 問６
p ["大吉", "中吉", "小吉", "凶"].sample
# 5-4
# 問７
p [100, 50, 300].sort
# 問８
p [100, 50, 300].sort.reverse
# 問９
p "cba".reverse
# 5-5
# 問１０
p ["100", "50", "300"].join(",")
# 問１１
p "100,50,300".split(",")
# 5-6
# 問１２
results = [1, 2, 3].map do |x|
  x * 3
end
p results
# 問１３
results = ["abc", "xyz"].map do |x|
  x.reverse
end
p results
# 問１４
results = ["aya", "achi", "Tama"].map do |x|
  x.downcase
end
p results.sort
