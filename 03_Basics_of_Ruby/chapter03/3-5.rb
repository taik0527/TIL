# 複数の道から１つを選んで分岐する
order "モカ"
case order
when "カフェラテ"
  puts "300円です"
when "モカ"
  puts "350円です"
end

# 複数の道に合致するものがない時の処理を書く
order = "パフェ"
case order
when "カフェラテ"
  puts "300円です"
when "モカ"
  puts "350円です"
else
  puts "取り扱っていません"
end

# caseの後に変数を書かない使い方
wallet = "300"
case 
when wallet >= 500
  puts "モカにホイップトッピング"
when wallet >= 300
  puts "カフェラテ"
end
