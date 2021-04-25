# クラスメソッドを定義する
=begin
class Cafe
  def self.welcome
    "いらっしゃいませ！"
  end
end

puts Cafe.welcome

# 同じクラスのクラスメソッドを呼び出す
class Cafe
  def self.welcome
    "いらっしゃいませ！"
  end
  def self.welcome_again
    welcome + "いつもありがとうございます！"
  end
end

puts Cafe.welcome_again
=end
# クラスメソッド別の定義方法
class Cafe
  class << self
    def welcome
      "いらっしゃいませ"
    end
  end
end

puts Cafe.welcome
