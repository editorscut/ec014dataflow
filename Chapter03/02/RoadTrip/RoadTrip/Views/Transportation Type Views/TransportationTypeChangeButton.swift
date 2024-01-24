import SwiftUI

struct TransportationTypeChangeButton {
  @Binding var transportationType: TransportationType
}

extension TransportationTypeChangeButton: View {
  var body: some View {
    let _ = Self._printChanges()
    Button("Change Transportation Type") {
      transportationType = TransportationType.random()
    }
    .buttonStyle(.borderedProminent)
    .foregroundStyle(Color.white)
  }
}

#Preview {
  TransportationTypeChangeButton(transportationType: .constant(.bike))
}


