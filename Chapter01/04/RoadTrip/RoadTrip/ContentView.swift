import SwiftUI
import SwiftUIViewPrettyPrint

struct ContentView: View {
  var body: some View {
    let _ = prettyPrint(Body.self, in: self)
    DisplayView()
  }
}

#Preview {
  ContentView()
}
