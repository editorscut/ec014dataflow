import SwiftUI

struct TransportationTypePicker {
  @State private var transportationType = TransportationType.bike
  @Environment(Journey.self) private var journey
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
             journey.transportationType = newValue
           }
           .onAppear {
             transportationType = journey.transportationType
           }
  }
}


#Preview {
  TransportationTypePicker()
}
