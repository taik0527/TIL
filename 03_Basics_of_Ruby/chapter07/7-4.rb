# ローカル変数とスコープ
fluit = "りんご" #この変数fluitはメソッドの中では使えない
def hello
  text = "こんにちは" #この変数textはメソッドの外では使えない
  p text
end

hello
