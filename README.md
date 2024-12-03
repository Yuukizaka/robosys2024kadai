# robosys2024kadai　[![test](https://github.com/Yuukizaka/robosys2024kadai/actions/workflows/test.yml/badge.svg)](https://github.com/Yuukizaka/robosys2024kadai/actions/workflows/test.yml)
ロボットシステム学課題用
## 概要

- これは知りたい西暦の干支を表示するコマンドです。
- わざわざ干支を調べるのもめんどくさいと思いこのコマンドを作成しました。

## 使用方法
- まずはリポジトリを以下のコマンドを実行してクローンを作成します。
```
$ git clone git@github.com:Yuukizaka/robosys2024kadai.git
```

- コマンドを実行する際はまず以下のディレクトリに入ってください
```
$ cd robosyskadai
```

- 最初に実行をする場合、実行権限を与えてください
```
$ chmod +x eto
```

- 実行する際はこの形で入力してください
```
$ echo 2004 | ./eto
```

## 使用例
```
$ echo 2004 | ./eto
2004 年の干支は申です。
```
## 使用言語
- python
    テスト済みバージョン 3.10~3.12対応	

## テスト環境

- Ubuntu 22.04　LTS

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- © 2024 yuuki ishizaka
