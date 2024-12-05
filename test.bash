#!/bin/bash
# SPDX-FileCopyrightText: 2024 Yuuki Ishizaka
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

# 2023年のテスト
out=$(echo 2023 | ./eto)
[ "${out}" = "2023 年の干支は卯です。" ] || ng "$LINENO"

# 2000年のテスト
out=$(echo 2000 | ./eto)
[ "${out}" = "2000 年の干支は辰です。" ] || ng "$LINENO"

# 無効な入力（abc）のテスト
out=$(echo abc | ./eto 2>/dev/null; echo $?)
[ "${out}" = "1" ] || ng "$LINENO"

# 1987年のテスト
out=$(echo 1987 | ./eto)
[ "${out}" = "1987 年の干支は卯です。" ] || ng "$LINENO"

# 1990年のテスト
out=$(echo 1990 | ./eto)
[ "${out}" = "1990 年の干支は午です。" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo "OK"
exit $res



