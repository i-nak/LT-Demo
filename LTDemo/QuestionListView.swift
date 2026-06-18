import SwiftUI

/// 問題一覧画面。タップで詳細へ遷移する。
struct QuestionListView: View {
    private let questions = Question.samples

    var body: some View {
        NavigationStack {
            List(questions) { question in
                NavigationLink(value: question.id) {
                    Text(question.title)
                }
            }
            .navigationTitle("問題一覧")
            .navigationDestination(for: Int.self) { id in
                if let question = questions.first(where: { $0.id == id }) {
                    QuestionDetailView(question: question)
                }
            }
        }
    }
}

#Preview {
    QuestionListView()
}
