import SwiftUI

struct ContentView {
  @State private var journey = Journey()
}

extension ContentView: View {
  var body: some View {
    EditableJourneyView(journey: $journey)
  }
}

#Preview {
  ContentView()
}
