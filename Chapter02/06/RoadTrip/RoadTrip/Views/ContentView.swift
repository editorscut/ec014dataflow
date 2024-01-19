import SwiftUI

struct ContentView {
  @State private var isTintedOrange = false
}

extension ContentView: View {
  var body: some View {
    let _ = Self._printChanges()
    VStack {
      if isTintedOrange {
        TransportationTypeView()
          .tint(.orange)
      } else {
        TransportationTypeView()
      }
      Button("Toggle Tint Color") {
        isTintedOrange.toggle()
      }
    }
  }
}



#Preview {
  ContentView()
}
