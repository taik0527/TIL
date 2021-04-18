# 配列の要素を取得する
drinks = ["コーヒー", "カフェラテ"]
puts drinks[0]
puts drinks[1]

# 配列の要素を後ろから数えて取得する
drinks = ["コーヒー", "カフェラテ"]
puts drinks[-1]
puts drinks[-2]

# firstメソッドとlastメソッド
drinks = ["コーヒー", "カフェラテ"]
puts drinks.first
puts drinks.last

# 変数を使わずにメソッドを呼び出す
drinks = ["コーヒー", "カフェラテ"]
p puts drinks.first
p ["コーヒー", "カフェラテ"].first
