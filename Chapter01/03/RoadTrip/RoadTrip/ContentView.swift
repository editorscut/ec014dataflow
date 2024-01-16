import SwiftUI
import SwiftUIViewPrettyPrint

struct ContentView: View {
  var body: some View {
    let _ = prettyPrint(Body.self, in: self)
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundStyle(.tint)
      Text("Hello, world!")
        .padding()
    }
  }
}

#Preview {
  ContentView()
}
