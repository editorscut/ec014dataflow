import SwiftUI

struct ContentView: View {
  var body: some View {
    let _ = Self._printChanges()
    TransportationTypeView()
  }
}

#Preview {
  ContentView()
}
