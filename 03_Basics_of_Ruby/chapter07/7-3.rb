# 引数を省略した時のデフォルト値
def order(item = "コーヒー")
  "#{item}をください"
end

puts order
puts order("カフェラテ")
puts order("モカ")

 =begin
# 引数の順番を変えられるキーワード引数
def order(item:, size:)
  "#{item}を#{size}サイズでください"
end

puts order{item: "カフェラテ", size: "ベンティ"}
puts order{size: "ベンティ", item: "カフェラテ"}

# キーワード引数でのデフォルト値
def order{item:, size: "ショート"}
  "#{item}を#{size}サイズでください"
end

puts order(item: "カフェラテ")
puts order{item: "カフェラテ", size: "ベンティ"}
=end
