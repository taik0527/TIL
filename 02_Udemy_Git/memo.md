# Gitとは
ファイルのバージョンを管理するためのツール

# Gitがないと何がつらいか
Gitがないとファイルのバージョンを管理できず、誰がいつ何を変更したのかが分からなくなり、他の人が変更したものを上書きしてしまったり、消してしまったりするようなトラブルが起きやすくなる

# ブランチとは
１つのリポジトリから分岐をすることで、複数の機能を同時並行で開発するための機能

# コミットとは
ワークツリーからステージに記録した内容をローカルリポジトリにスナップショットとして記録すること。

# ローカルブランチとは
ローカルリポジトリにあるブランチのこと

# リモートブランチとは
リモートリポジトリにあるブランチのこと

# コンフリクトとは
複数人が同じ箇所で別々の変更をしてしまった時にどの変更を優先したらいいか分からずに起こる状態のこと
どういった場合に起きるか
同じファイルの同じ行に対して複数人が異なる編集を行った時に起こる

# プルリクエストとは
自分の変更したコードをリポジトリに取り込んでもらえるように依頼する機能のこと

# .gitignoreとは
パスワード等の機密情報や、チーム開発に必要のない自動生成されるキャッシュやファイルを除外するためのファイル。

## ワークツリー
ファイルを変更する自分の作業場のこと

## ステージ
ワークツリーで変更した内容を追加する　git add
コミットする変更を準備するためにある

ステージに追加された変更をスナップショットとしてリポジトリに記録する。
変更を記録することをコミットという。　git commit

リポジトリに圧縮ファイル、ツリー、コミットファイルを作成することでデータを保持している。
Gitの本質はデータを圧縮してスナップショットで保存していること

１行目　変更内容の要約
２行目　空行
３行目　変更した理由


## 変更差分を確認するコマンド
# ワークツリーとステージの差分
git diff
# ステージとリポジトリの差分
git diff —staged

## 変更履歴を確認するコマンド
git log
# １行で表示する
git log —oneline
# ファイルの変更差分を表示する
git log -p index.html
# 表示するコミット数を制限する
git log -n <コミット数>

ファイルの削除を記録するコマンド
# ファイルごと削除
git rm <ファイル名>
git tm <ディレクトリ名>
# ファイルを残したいとき
git rm  —cached <ファイル名>

ファイルの移動を記録するコマンド
git mv <旧ファイル> <新ファイル>


GitHub

リモートリポジトリを新規追加する
Git remote add origin
ここ重要だと思う。originというショートカットでurlのリモートリポジトリを登録しておくことで次回からurlを省略できる。

リモートリポジトリへ送信する
git push <リモート名> <ブランチ名>
例:git push origin master

コマンドにエイリアスをつける
git config --global alias.ci commit

バーション管理したくないファイル
パスワード等の機密情報 AWS等
チーム開発に必要のないファイル　自動生成されるファイルやキャッシュ等
外す方法
.gitignoreファイルに指定する
# 指定したファイルを除外
Index.html
# ルートディレクトリを指定
/root.html
# ディレクトリ以下を除外
Dir/
# /以外の文字列にマッチ「*」
/*/*.css


ワークツリーのファイルを元に戻したいとき（ワークツリーの状態をステージの状態と同じにする）
ファイルの変更を取り消すコマンド
git checkout — <ファイル名>
git checkout — <ディレクトリ名>
全ファイルの変更を取り消す
git checkout — .

ステージした変更を取り消したいとき(最新のコミットの内容でステージの内容を上書きする）
git reset HEAD <ファイル名>
git reset HEAD <ディレクトリ名>
# 全変更を取り消す
git reset HEAD .

直前のコミットを修正したいとき
git commit —amend
今のステージの状態を元に、直前のコミットをやり直す
ただし、リモートリポジトリにプッシュしたコミットはやり直してはいけない。

# リモートを表示する
git remote
# 対応するURLを表示する
git remote -v

リモートリポジトリは複数登録することができる

リモートリポジトリを新規追加する
git remote add <リモート名> <リモートURL>
git remote add tutorial

リモートから情報を取得する
リモートから情報を取得する方法には２種類ある
フェッチ
git fetch <リモート名>
git fetch origin
ローカルリポジトリ内のremote/リモート/ブランチに保存されるらしい
ワークツリーに反映させるにはgit mergeを使うらしい

プル
リモートから情報を取得してマージまでを一度にやりたいとき使う
git pull <リモート名> <ブランチ名>
git pull origin master
＃上記コマンドは省略可能
git pull

プルの注意点
masterブランチにいる状態でhogeブランチをプルするとmasterブランチにhogeブランチがマージされること
今自分がいるブランチにマージされる！

リモートの詳細情報を表示する
git remote show <リモート名>
git remote show origin

リモートを変更・削除する
git remote rename <旧リモート名> <新リモート名>
git remote rename tutorial new_tutorial

git remote rm <リモート名>
git remote rm new_tutorial

ブランチを新規追加する
git branch <ブランチ名>
git branch feature
ブランチの一覧を表示する
git branch
# 全てのブランチを表示する
git branch -a

ブランチを切り替える
git checkout <ブランチ名>
git checkout feature
変更履歴をマージする
git merge <ブランチ名>
git merge <リモート名/ブランチ名>
git merge origin/master

マージには３種類ある
Fast Forward:早送りになるマージ
Auto Merge:基本的なマージ
Conflict:

コンフリクトが起きないようにするには
・複数人で同じファイルを変更しない
・pullやmergeする前に、pullするブランチに移動してからpullする
・pullする時はpullするブランチに移動してからpullする

ブランチを変更・削除する
変更する
git branch -m <ブランチ名>
削除する
git branch -d <ブランチ名>
# 強制削除する
git branch -D <ブランチ名>

masterブランチをリリース用ブランチに、開発はトピックブランチを作成して進めるのが基本。最新のmasterブランチからブランチを切って開発していく。

GitHub Flowを実践する上でのポイント
・masterブランチは常にデプロイできる状態に保つ
・新開発はmasterブランチから新しいブランチを作成してスタート
・作成した新しいブランチ上で作業しコミットする
・定期的にPushする
・masterにマージするためにプルリクエストを使う
・必ずレビューを受ける
・masterブランチにマージしたらすぐにデプロイする←テストとデプロイ作業は自動化

タグ
コミットを参照しやすくするためにわかりやすい名前をつけるのがタグ。よくリリースポイントに使う。
git tag
# パターンを指定してタグを表示
git tag -l "201705"

タグを作成する（注釈付きタグ）
git tag -a [タグ名]
タグを作成する（軽量版タグ）
git tag [タグ名]
タグのデータを表示する
git show [タグ名]

タグをリモートリポジトリに送信する
git push [リモート名] [タグ名]
# タグを一斉に送信する
git push origin --tags

作業を一時避難する
git stash
git stash save
避難した作業を確認する
git stash list

避難した作業を復元する
# 最新の作業を復元する
git stash apply
# ステージの状況も復元する
git stash apply --index
# 特定の作業を復元する
git stash apply [スタッシュ名]
git stash apply stash@{1}

避難した作業を削除する
# 最新の作業を削除する
git stash drop
# 特定の作業を削除する
git stash drop [スタッシュ名]
git stash drop stash@{1}
#全作業を削除する
git stash clear


変更を統合する際に、履歴を綺麗に整えるために使うのがリベース
リベースで　　履歴を綺麗に整えた形で変更を統合する
git rebase <ブランチ名>
GitHubにプッシュしたコミットをリベースするのはNG

リベースとマージの使い分け
プッシュしていないローカルの変更にはリベースを使い、プッシュした後はマージを使うコンフリクトしそうならマージを使う

プルにはマージ型とリベース型がある
プルのマージ型（通常のプル）
git pull origin master
プルのリベース型
git pull --rebase origin master
GItHubの内容を取得したいだけの時に使う

```git:title
# プルをリベース型に設定する
git config --global pull.rebase true
# masterブランチでgit pullする時だけ
git config branch.master.rebase true
```
