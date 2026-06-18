import SwiftUI

/// 問題詳細画面。
///
/// 問題文は固定高さ(120pt)のカードに表示する。短い問題は収まるが、
/// 最長問題は本文がカードからはみ出して下の選択肢ボタンに重なる（＝見切れ）。
struct QuestionDetailView: View {
    let question: Question

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // 問題文カード：固定高さ。長文はクリップせずはみ出すため、選択肢に重なる。
            Text(question.body)
                .font(.title3)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .frame(height: 120)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(12)

            // 選択肢
            ForEach(question.choices, id: \.self) { choice in
                Button(action: {}) {
                    Text(choice)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue.opacity(0.15))
                        .cornerRadius(8)
                }
                .buttonStyle(.plain)
            }

            Button("次へ") {}
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundStyle(.white)
                .cornerRadius(8)

            Spacer()
        }
        .padding()
        .navigationTitle(question.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        QuestionDetailView(question: Question.samples.last!)
    }
}
