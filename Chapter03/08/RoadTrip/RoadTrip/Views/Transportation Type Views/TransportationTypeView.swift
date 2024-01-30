import SwiftUI

struct TransportationTypeView {
  let transportationType: TransportationType
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

#Preview {
  TransportationTypeView(transportationType: .bike)
}
