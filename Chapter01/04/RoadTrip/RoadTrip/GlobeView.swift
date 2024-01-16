import SwiftUI
import SwiftUIViewPrettyPrint

struct GlobeView: View {
  var body: some View {
    let _ = prettyPrint(Body.self, in: self)
    Image(systemName: "globe")
      .imageScale(.large)
      .foregroundStyle(.tint)
  }
}

#Preview {
  GlobeView()
}
