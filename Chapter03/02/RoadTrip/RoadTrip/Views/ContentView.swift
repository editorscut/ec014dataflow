import SwiftUI

struct ContentView {
  private let journey = Journey()
}

extension ContentView: View {
  var body: some View {
    JourneyView(journey: journey)
  }
}

#Preview {
  ContentView()
}
