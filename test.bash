#!/bin/bash
# SPDX-FileCopyrightText: 2024 Yuuki Ishizaka
### SPDX-License-Identifier: BSD-3-Clause

# エラー処理関数
ng() {
    echo "${1}行目が違うよ"
    res=1
}

# 初期化
res=0

# テストケースの定義
declare -a test_cases=(
    "1|No1~150までの知りたいポケモンの番号を入力してください:1: フシギダネ - くさ/どくタイプ"
    "2|No1~150までの知りたいポケモンの番号を入力してください:2: フシギソウ - くさ/どくタイプ"
    "152|No1~150までの知りたいポケモンの番号を入力してください:152: No1〜151の範囲内で数字を入力してください。"
    "abc|No1~150までの知りたいポケモンの番号を入力してください:番号で入力してください"
)

# テスト実行
echo "==== テスト開始 ===="
for test_case in "${test_cases[@]}"; do
    input="${test_case%%|*}"     # 入力値を取得
    expected="${test_case#*|}"   # 期待される出力を取得

    # 実行して結果を取得
    out=$(echo "$input" | ./zukan 2>&1)

    # 出力の検証
    if [ "$out" != "$expected" ]; then
        ng "$LINENO"
        echo "テスト失敗: 入力='$input'"
        echo "期待値:"
        echo -e "$expected"
        echo "実際:"
        echo -e "$out"
    else
        echo "テスト成功: 入力='$input'"
    fi
done

# テスト結果の表示
echo "==== テスト終了 ===="
[ "$res" -eq 0 ] && echo "全てのテストが成功しました。" || echo "一部のテストが失敗しました。"

# スクリプト終了
exit $res
