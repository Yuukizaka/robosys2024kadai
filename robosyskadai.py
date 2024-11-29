#!/usr/bin/python3

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
