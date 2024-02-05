import SwiftUI

struct ContentView {
}

extension ContentView: View {
  var body: some View {
    let _ = Self._printChanges()
    EditableJourneyView()
  }
}

#Preview {
  ContentView()
    .environmentObject(JourneyController())
}
