import SwiftUI

struct TransportationTypePicker {
  @State private var transportationType = TransportationType.bike
  @EnvironmentObject private var controller: JourneyController
}

extension TransportationTypePicker: View {
  var body: some View {
    let _ = Self._printChanges()
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
  TransportationTypePicker()
    .environmentObject(JourneyController())
}
