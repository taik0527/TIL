# モジュールにクラスメソッドを定義する
module WhippedCream
  def self.into
    "トッピング用ホイップクリーム"
  end
end
puts WhippedCream.into

# 定数を使う
module WhippedCream
  Price = 100
end
puts WhippedCream::Price

# Rubyが用意しているモジュールを使う
puts Math::PI
puts Math.cos(Math::PI)

# 名前空間
module BecoCafe
  class Coffee
    def self.info
      "深みと香りのコーヒー"
    end
  end
end
module MachuCafe
  class Coffee
    def self.info
      "豊かな甘味のコーヒー"
    end
  end
end
puts BecoCafe::Coffee.info
puts MachuCafe::Coffee.info
