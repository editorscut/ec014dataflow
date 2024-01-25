import SwiftUI

struct ContentView {
  let controller = JourneyController()
}

extension ContentView: View {
  var body: some View {
    let _ = Self._printChanges()
    EditableJourneyView(controller: controller)
  }
}

#Preview {
  ContentView()
}
