# モジュールを作る
module WhippedCream
end

# モジュールにメソッドを定義する
module WhippedCream
  def whipped_cream
    @name += "ホイップクリーム"
  end
end

class Drink
  include WhippedCream
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

drink = Drink.new("モカ")
drink.whipped_cream
puts drink.name

# モジュールは複数のクラスで共同利用できる
class Cake
  include WhippedCream
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

drink = Drink.new("モカ")
drink.whipped_cream
puts drink.name

cake = Cake.new("チョコレートケーキ")
cake.whipped_cream
puts cake.name

# モジュールのメソッドをクラスメソッドにする
module Greeting
  def welcome
    "いらっしゃいませ！"
  end
end
class Cafe
  extend Greeting
end
puts Cafe.welcome
