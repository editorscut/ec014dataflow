import SwiftUI
import SwiftUIViewPrettyPrint

struct GreetingView: View {
  var body: some View {
    let _ = prettyPrint(Body.self, in: self)
    Text("Hello, world!")
      .padding()
  }
}

#Preview {
  GreetingView()
}
