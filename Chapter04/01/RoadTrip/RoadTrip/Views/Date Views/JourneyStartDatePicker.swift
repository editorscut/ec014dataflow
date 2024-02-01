import SwiftUI

struct JourneyStartDatePicker {
  @Binding var startDate: Date
}

extension JourneyStartDatePicker: View {
  var body: some View {
    DatePicker("Start Date:",
               selection: $startDate)
    .padding()
  }
}

#Preview {
  JourneyStartDatePicker(startDate: .constant(Date()))
}
