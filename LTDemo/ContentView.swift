import SwiftUI
import Playgrounds

@main struct LTDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
