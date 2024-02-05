import SwiftUI

struct StartDatePicker {
  @Binding var startDate: Date
}

extension StartDatePicker: View {
  var body: some View {
    DatePicker("Start Date:",
               selection: $startDate)
    .padding()
  }
}

#Preview {
  StartDatePicker(startDate: .constant(Date()))
}
