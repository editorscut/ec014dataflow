import SwiftUI

struct ContentView {
  @State private var history = JourneyHistory()
}

extension ContentView: View {
  var body: some View {
    EditableJourneyView(journey: history.journeys[0])
  }
}

#Preview {
  ContentView()
}
