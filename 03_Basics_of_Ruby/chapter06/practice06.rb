# 6-1
# 問１
menu = {coffee: 300, caffe_latte: 400}
p menu[:caffe_latte]
# 問２
menu = {"モカ" => "チョコレートシロップとミルク入り", "カフェラテ" => "ミルク入り"}
p menu["モカ"]
# 6-2
# 問３
menu = {coffee: 300, caffe_latte: 400}
p menu[:tea] = 300
# 問４
menu = {coffee: 300, caffe_latte: 400}
p menu.delete(:coffee)
# 問５
menu = {coffee: 300, caffe_latte: 400}
unless menu[:tea]
  puts "紅茶はありませんか？"
end
# 問６
menu = {coffee: 300, caffe_latte: 400}
if menu[:caffe_latte] <= 500
  puts "カフェラテください"
end
# 問７
hash = {}
hash.default = 0
array = "caffelatte".chars
array.each do |x|
  hash[x] += 1
end
p hash
# 6-3
# 問８
menu = {"コーヒー" => 300, "カフェラテ" => 400}
menu.each do |key, x|
  puts "#{key} - #{x}円"
end
# 問９
menu = {"コーヒー" => 300, "カフェラテ" => 400}
menu.each do |key, x|
  if x >= 350
    puts "#{key} - #{x}円"
  end
end
# 問１０
menu = {}
menu.each do |key, x|
  puts "#{key} - #{x}円"
end
# 問１１
menu = {"コーヒー" => 300, "カフェラテ" => 400}
keys = []
menu.each do |key, value|
  keys.push(key)
end
p keys
