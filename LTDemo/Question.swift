import Foundation

/// クイズの1問。デモ用にハードコードしたサンプルデータを持つ。
struct Question: Identifiable {
    let id: Int
    let title: String
    let body: String
    let choices: [String]
}

extension Question {
    /// デモ用サンプル。最後の「問題5」だけ本文が極端に長く、
    /// 詳細画面の固定高さカードからはみ出して見切れる。
    static let samples: [Question] = [
        Question(
            id: 1,
            title: "問題1",
            body: "日本の首都はどこ？",
            choices: ["東京", "大阪"]
        ),
        Question(
            id: 2,
            title: "問題2",
            body: "1 + 1 = ?",
            choices: ["2", "3"]
        ),
        Question(
            id: 3,
            title: "問題3",
            body: "富士山がまたがる2つの県は？",
            choices: ["静岡と山梨", "長野と岐阜"]
        ),
        Question(
            id: 4,
            title: "問題4",
            body: "光の三原色に含まれない色は？",
            choices: ["赤", "黄"]
        ),
        Question(
            id: 5,
            title: "問題5（最長問題）",
            body: """
            次の文章を読み、筆者の主張として最も適切なものを選びなさい。\
            近年の急速な技術革新は、私たちの生活様式を根本から変えつつあり、\
            とりわけ人工知能の発展は産業構造そのものに大きな影響を与えている。\
            こうした変化の中で、私たちは利便性の向上という恩恵を享受する一方で、\
            雇用の流動化や情報の信頼性といった新たな課題にも直面している。\
            したがって、技術を正しく理解し、批判的に活用する力が、\
            これまで以上に強く求められているのである。
            """,
            choices: ["技術は無条件に善である", "技術を批判的に活用する力が必要だ"]
        ),
    ]
}
