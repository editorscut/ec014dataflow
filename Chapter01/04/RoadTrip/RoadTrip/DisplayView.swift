import SwiftUI
import SwiftUIViewPrettyPrint

struct DisplayView: View {
  var body: some View {
    let _ = prettyPrint(Body.self, in: self)
    VStack {
      GlobeView()
      GreetingView()
    }
  }
}

#Preview {
  DisplayView()
}
