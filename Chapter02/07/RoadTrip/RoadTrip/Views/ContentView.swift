import SwiftUI

struct ContentView {
  @State private var isTintedOrange = false
}
extension ContentView: View {
  var body: some View {
    let _ = Self._printChanges()
    VStack {
      TransportationTypeView()
        .tint(isTintedOrange ? Color.orange : nil)
      Button("Toggle Tint Color") {
        isTintedOrange.toggle()
      }
    }
  }
}

#Preview {
  ContentView()
}
