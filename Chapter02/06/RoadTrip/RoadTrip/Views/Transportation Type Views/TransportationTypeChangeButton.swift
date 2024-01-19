import SwiftUI

struct TransportationTypeChangeButton {
  let action: () -> Void
}

extension TransportationTypeChangeButton: View {
  var body: some View {
    Button("Change Transportation Type",
           action: action)
    .buttonStyle(.borderedProminent)
    .foregroundStyle(Color.white)
  }
}

#Preview {
  TransportationTypeChangeButton(action: {})
}


