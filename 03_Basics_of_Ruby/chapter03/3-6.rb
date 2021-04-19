# 決まった回数だけ繰り返す
3.times do
  puts "カフェラテ"
end

3.times do
  puts "カフェラテ"
  puts "お願いします"
end
puts "注文は以上です"

# do endの代わりに{}を使う
3.times{
  puts "カフェラテ"
}

# 条件つき繰り返し
biscuit = 0
while biscuit < 2
  biscuit = biscuit + 1
  puts "ポケットを叩くとビスケットが#{biscuit}つ"
end
