# initializeメソッド
=begin
class Drink
  def initialize
    puts "新しいオブジェクト"
  end
end

Drink.new

# インスタンス変数の初期値を設定する
class Drink
  def initialize
    @name = "カフェラテ"
  end
  def name
    @name
  end
end

drink = Drink.new
puts drink.name
=end
# initializeメソッドへ引数を渡す
class Drink
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

drink = Drink.new("モカ")
puts drink.name
