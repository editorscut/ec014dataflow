import SwiftUI

struct TransportationTypeView {
  @State private var transportationType = TransportationType.random()
}

extension TransportationTypeView: View {
  var body: some View {
    HStack {
      let _ = Self._printChanges()
      TransportationTypeImageView(imageName: transportationType.iconName)
      TransportationTypeTitleView(title: transportationType.description)
    }
  }
}

extension TransportationTypeView {
  private func changeTransportationType() {
    transportationType = TransportationType.random()
  }
}

#Preview {
  TransportationTypeView()
}
