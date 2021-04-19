# 配列を繰り返し処理する
drinks = ["コーヒー", "カフェラテ"]
drinks.each do |drink|
  puts drink
end
# 繰り返しを途中で終わらせる
[1, 2, 3].each do |x|
  break if == 2
  puts x
end
# 繰り返しの次の回へ進む
[1, 2, 3].each do |x|
  next if == 2
  puts x
end
# 範囲を指定して繰り返す
(3..5).each do |x|
  puts x
end
