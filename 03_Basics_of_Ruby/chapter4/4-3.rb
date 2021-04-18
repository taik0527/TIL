# 要素を追加する
drinks = ["コーヒー"]
drinks.push("カフェラテ")
drinks.unshift("モカ")
drinks << "ティーラテ"
# 要素を削除する
drinks = ["モカ", "コーヒー", "カフェラテ"]
drinks.pop #末尾から1つ削除
drinks.shift #先頭から1つ削除
# 配列を足し算する
a1 = [1, 2, 3]
a2 = [4, 5]
p a1 + a2
# 配列を引き算する
a1 = [1, 2, 3]
a2 = [1, 3, 5]
p a1 - a2
