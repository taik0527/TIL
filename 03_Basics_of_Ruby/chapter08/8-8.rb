# メソッドの呼び出しを制限する
class Cafe
  def staff
    makanai
  endprivate
  def makanai
    "店員用スペシャルメニュー"
  end
end

# provateとpublic
class Foo
  def a
  end
  def b
  end

  private

  def c
  end

  public

  def d
  end
end

# privateなクラスメソッドを定義する
class Foo
  private_class_method def self.a
    "method a"
  end
end
p Foo a
