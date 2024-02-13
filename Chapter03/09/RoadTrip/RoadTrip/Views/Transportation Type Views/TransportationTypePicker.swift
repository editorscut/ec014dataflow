import SwiftUI

struct TransportationTypePicker {
  @Binding var transportationType: TransportationType
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
  }
}


#Preview {
  TransportationTypePicker(transportationType: .constant(.bike))
}
