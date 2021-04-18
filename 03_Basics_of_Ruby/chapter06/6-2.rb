# ハッシュへキーと値の組を追加する
menu = {coffee: 300, caffe_latte: 400}
menu[:mocha] = 400
p menu

# ハッシュは同じキーを複数持てない

# 存在しないキーを指定したとき
menu = {coffee: 300, caffe_latte: 400}
p menu{:tea}

# 存在しないキーの値を設定
menu = {coffee: 300, caffe_latte: 400}
menu.default = 0
p menu

# ２つのハッシュを１つにまとめる
coffee_menu = {coffee: 300, caffe_latte: 400}
tea_menu = {tea: 300, tea_latte: 400}
menu = coffee_menu.merge(tea_menu)
p menu

# ハッシュからキーと値の組を削除する
menu = {coffee: 300, caffe_latte: 400}
menu.delete(:coffe_latte)
p menu
