import SwiftUI

struct TransportationTypeView {
  private let transportationType = TransportationType.random()
}

extension TransportationTypeView: View {
  var body: some View {
    HStack {
      let _ = print(self)
      TransportationTypeImageView(imageName: transportationType.iconName)
      TransportationTypeTitleView(title: transportationType.description)
    }
  }
}

#Preview {
  TransportationTypeView()
}
