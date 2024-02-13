import SwiftUI

struct TransportationTypePicker {
  @State private var transportationType = TransportationType.bike
  let controller: JourneyController
}

extension TransportationTypePicker: View {
  var body: some View {
    Picker("Transportation Type",
           selection: $transportationType) {
      ForEach(types) {type in
        Image(systemName: type.iconName)
      }
    }
           .pickerStyle(.segmented)
           .padding(.horizontal)
           .onChange(of: transportationType) { oldValue, newValue in
             controller.changeTransportationType(to: newValue)
           }
           .onAppear {
             transportationType = controller.journey.transportationType
           }
  }
}


#Preview {
  TransportationTypePicker(controller: JourneyController())
}
