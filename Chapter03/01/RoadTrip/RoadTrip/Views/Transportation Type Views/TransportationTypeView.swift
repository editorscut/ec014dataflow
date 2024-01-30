import SwiftUI

struct TransportationTypeView {
  @State private var transportationType = TransportationType.walkOrRun
}

extension TransportationTypeView: View {
  var body: some View {
    VStack {
      HStack {
        let _ = Self._printChanges()
        TransportationTypeImageView(imageName: transportationType.iconName)
        TransportationTypeTitleView(title: transportationType.description)
      }
      TransportationTypePicker(transportationType: $transportationType)
    }
  }
}

#Preview {
  TransportationTypeView()
}
