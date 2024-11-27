#/bin/user/python3

import csv

def main():
    # CSVファイルからデータを直接読み込む
    try:
        with open("pokedex.csv", mode="r", encoding="utf-8") as file:
            reader = list(csv.reader(file))
            # ヘッダーをスキップしてリスト化（番号, 名前, タイプ）
            pokedex = {int(row[0]): f"{row[1]} - {row[2]}タイプ" for row in reader[1:]}

        # ユーザーに番号を入力してもらう
        num = int(input("1〜150の数字を入力してください: "))
        
        # 番号に対応するポケモンを表示
        print(f"{num}: {pokedex.get(num, '1〜151の範囲内で数字を入力してください。')}")

    except FileNotFoundError:
        print("CSVファイルが見つかりません。正しいファイルパスを確認してください。")
    except ValueError:
        print("カントー地方までです。")

if __name__ == "__main__":
    main()
