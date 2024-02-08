import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      SessionsView()
        .tabItem { Label("Sessions",
                         systemImage: "videoprojector") }
      PresentersView()
        .tabItem { Label("Presenters",
                         systemImage: "person.3.sequence.fill") }
    }
  }
}


#Preview {
  ContentView()
}
