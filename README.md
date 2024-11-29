# robosys2024kadai　[![test](https://github.com/Yuukizaka/robosys2024kadai/actions/workflows/test.yml/badge.svg)](https://github.com/Yuukizaka/robosys2024kadai/actions/workflows/test.yml)
ポケモン図鑑
No.1~151までの番号を入力するとそのポケモンの名前が出てくるというものです。

## 概要
主な機能として知りたいポケモンの図鑑番号を入力するとそのポケモンの名前とタイプが知れるというものです。
これは図鑑が完成しそうなとき、持ってないポケモンの番号はわかるのでスムーズに図鑑を完成することができます。

## 使用方法

以下の手順でプロジェクトをローカル環境にインストールしてください。
```
$git clone git@github.com:Yuukizaka/robosys2024kadai.git
$cd robosyskadai
$chmod +x zukan
$./zukan
```
##使用例
./zukan

No1~150までの知りたいポケモンの番号を入力してください:1

1: フシギダネ - くさ/どくタイプ

## サンプル
```
import csv

def main():
    try:
        with open("pokedex.csv", mode="r", encoding="utf-8") as file:
            reader = list(csv.reader(file))
            pokedex = {int(row[0]): f"{row[1]} - {row[2]}タイプ" for row in reader[1:]}
        num = int(input("No1~150までの知りたいポケモンの番号を入力してください:"))


        print(f"{num}: {pokedex.get(num, '1〜151の範囲内で数字を入力してください。')}")

    except ValueError:
        print("カントー地方までです。")

if __name__ == "__main__":
    main()
```

##使用言語
python
    テスト済みバージョン 3.10~3.12対応	

##テスト環境

- 対応OS　Ubuntu 20.04  ~ 22.04

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- © 2024 yuuki ishizaka

##参考
- https://rikapoke.hatenablog.jp/entry/pokemon_datasheet_gne7
- https://qiita.com/Canard_engineer_c_cpp/items/81ce4e53881138dbf37f
- https://qiita.com/koeri3/items/f85a617dcb6efebb2cab 
- https://github.com/greymd/tmux-xpanes
DuC
