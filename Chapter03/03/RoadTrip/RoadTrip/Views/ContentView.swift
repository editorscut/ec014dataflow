import SwiftUI

struct ContentView {
  @State private var journey = Journey()
}

extension ContentView: View {
  var body: some View {
    let _ = Self._printChanges()
    EditableJourneyView(journey: $journey)
  }
}

#Preview {
  ContentView()
}
