# blackboard tmux

ゼミ用黒板システム。

ssh bb@vm2018 -t /usr/local/bin/tx のラッパー。

## require

* ssh
* tmux

## tx.sh

bb サーバーの /usr/local/bin 等、
PATH の通っているフォルダに tx の名前でインストール。（管理者だけ）

このコマンドは次の bb から呼び出される。

## bb.sh

* サーバに黒板アカウントでログインし、
* コマンド tx を実行する

のラッパー。ssh の公開鍵を登録するなどを影でこっそりやり、
ssh のリモートコマンド実行機能で tx を呼び出しているだけ。
キモは tx なので、サーバにログイン、tx実行ができれば bb ラッパーに必要
はない。

各自のローカル PC の PATH が通っているフォルダ ${HOME}/bin あたりに bb、
あるいは、各自の好きな名前でセーブ。実行属性を与えること。

## usage

### 初期化

ローカル PC から、

```
$ bb --init
```

### 実行

ローカル PC から、

```
$ bb
```

## FIXME

* パスワード認証でもいいか。
* ssh ログイン後に tx でいいか。
* vm2018.local を名前解決できないな。lxd ゲストのため、avahi 効かない。
* vm2018 に共有アカウントが必要。
* ro 属性とか。
* 効率的デバッグのための仕掛け。引数で ID, SERV を取れるなど。

## UPDATE

* [update 2018-04-21] github.com/hkim0331/blackboard-tmux.git
* 2018-04-21 開発開始

---
hiroshi . kimura . 0331 @ gmail . com
