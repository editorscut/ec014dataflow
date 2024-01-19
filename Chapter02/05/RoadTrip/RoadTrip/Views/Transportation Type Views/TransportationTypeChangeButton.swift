import SwiftUI

struct TransportationTypeChangeButton {
  let action: () -> Void
}

extension TransportationTypeChangeButton: View {
  var body: some View {
    let _ = Self._printChanges()
    Button("Change Transportation Type",
           action: action)
    .buttonStyle(.borderedProminent)
    .foregroundStyle(Color.white)
    .onAppear{ print("TransportationTypeChangeButton appears") }
  }
}

#Preview {
  TransportationTypeChangeButton(action: {})
}


