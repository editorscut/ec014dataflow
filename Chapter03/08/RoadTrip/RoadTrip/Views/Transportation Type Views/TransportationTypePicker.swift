import SwiftUI

struct TransportationTypePicker {
  @Bindable var journey: Journey
}

extension TransportationTypePicker: View {
  var body: some View {
    let _ = Self._printChanges()
    Picker("Transportation Type",
           selection: $journey.transportationType) {
      ForEach(types) {type in
        Image(systemName: type.iconName)
      }
    }
           .pickerStyle(.segmented)
           .padding(.horizontal)
  }
}


#Preview {
  TransportationTypePicker(journey: Journey())
}
