# クラスにメソッドを定義する
# クラスに定義したメソッドを呼び出す
class Drink
  def name
    "カフェラテ"
  end
end

drink = Drink.new
puts drink.name

# クラスに引数を受け取るメソッドを定義する
=begin
class Drink
  def order(name)
    puts "#{name}をください"
end
drink = Drink.new
drink.order("カフェラテ")
=end
# クラス中で同じクラスのメソッドを呼び出す
class Drink
  def name
    "モカ" + topping
  end
  def topping
    "エスプレッソショット"
  end
end

drink = Drink.new
puts drink.name

# selfを使ってレシーバを調べる
class Drink
  def name
    p self
    "モカ" + topping
  end
  def topping
    "エスプレッソショット"
  end
end

drink = Drink.new
puts drink.name
