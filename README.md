# LT-Demo

LT「手動テストを Claude に任せてみた」のデモ用 iOS アプリ。

Xcode 27 のエージェントにシミュレータを操作させ、**人力の動作テスト（最長問題の見切れ確認）を肩代わりさせる**ためのサンプル。

## アプリの中身

クイズ風の最小 SwiftUI アプリ（依存ゼロ）。

- **問題一覧**（`QuestionListView`）→ タップ →**問題詳細**（`QuestionDetailView`）の2画面
- 問題文は固定高さ(120pt)のカードに表示
- **「問題5（最長問題）」だけ本文が極端に長く、カードからはみ出して選択肢ボタンに重なる＝見切れ**が発生する

短い問題1〜4は収まり、問題5だけ崩れるので、「最長問題で見切れを検出する」デモになる。

## デモ手順（私用PC・個人 Claude Pro/Max アカウント）

1. clone する
   ```sh
   git clone https://github.com/i-nak/LT-Demo.git
   cd LT-Demo
   open LTDemo.xcodeproj   # Xcode 27 で開く
   ```
2. `Xcode > Settings > Intelligence` でプロバイダに **Anthropic** を選び、**個人の Claude Pro / Max アカウント**でサインイン
   - ※ 会社(Team)アカウントは「プレミアムシート」が必要で弾かれるため、個人アカウントを使う
3. シミュレータ（例: iPhone 16 Pro）を選んで **⌘R** で一度起動しておく
4. エージェントペインを開き、テスト表の1行をそのまま渡す:
   > 最長の問題を表示して、画面の文字が見切れていないか、シミュレータを操作して確認して
5. Claude が **一覧 →「問題5（最長問題）」をタップ → 詳細画面で見切れを検出**して報告するのを見せる

## 見せ場

- Claude が**自分でタップして画面遷移**する（受動的なスクショ判定ではなく能動操作）
- アクセシビリティツリー＋スクショで**見切れを所見として報告**する

## 構成

```
LTDemo/
├── LTDemoApp.swift        # @main
├── Question.swift          # モデル＋サンプル5問（問題5が最長）
├── QuestionListView.swift  # 一覧
└── QuestionDetailView.swift # 詳細（見切れの仕掛け）
```
