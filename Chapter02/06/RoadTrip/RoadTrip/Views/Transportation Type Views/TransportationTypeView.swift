import SwiftUI

struct TransportationTypeView {
  @State private var transportationType = TransportationType.walkOrRun
  
  init() {
    print("Creating TransportationTypeView")
  }
}

extension TransportationTypeView: View {
  var body: some View {
    VStack {
      HStack {
        let _ = Self._printChanges()
        TransportationTypeImageView(imageName: transportationType.iconName)
        TransportationTypeTitleView(title: transportationType.description)
      }
      TransportationTypeChangeButton {
        changeTransportationType()
      }
    }
    .onAppear { print("TransportationTypeView appears") }
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
