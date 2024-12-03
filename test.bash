#!/bin/bash
# SPDX-FileCopyrightText: 2024 Yuuki Ishizaka
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo "${1}行目が違うよ"
        res=1
}

res=0

# テストケース1: 西暦2023の結果を確認
out=$(echo 2023 | ./eto.py)
[ "${out}" = "2023 年の干支は卯です。" ] || ng "$LINENO"

# テストケース2: 西暦2000の結果を確認
out=$(echo 2000 | ./eto.py)
[ "${out}" = "2000 年の干支は辰です。" ] || ng "$LINENO"

# テストケース3: 無効な入力の場合
out=$(echo abc | ./eto.py)
[ "${out}" = "無効な入力です。西暦の数字を入力してください。" ] || ng "$LINENO"

# テストケース4: 西暦1987の結果を確認
out=$(echo 1987 | ./eto.py)
[ "${out}" = "1987 年の干支は卯です。" ] || ng "$LINENO"

# テストケース5: 西暦1990の結果を確認
out=$(echo 1990 | ./eto.py)
[ "${out}" = "1990 年の干支は午です。" ] || ng "$LINENO"

# テスト結果の表示
[ "${res}" = 0 ] && echo "OK" # 通った場合に表示
exit $res

