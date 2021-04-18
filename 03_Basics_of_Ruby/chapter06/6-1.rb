# ハッシュとは
p( {:coffee => 300, :coffee_latte => 400} )

# シンボルとは
p "coffee".to_sym
p "coffee".to_s

# ハッシュには２種類の書き方がある
{:coffee => 300, :coffee_latte => 400} #シンボル以外のオブジェクトを使う時に使う
{coffee: 300, coffee_latte: 400} #シンボルを指定した時のみ使える

# 変数に代入してハッシュに名前をつける
menu = {:coffee => 300, :coffee_latte => 400}
p menu

# ハッシュから値を取得する
menu = {coffee: 300, coffee_latte: 400}
p menu[:coffee]
