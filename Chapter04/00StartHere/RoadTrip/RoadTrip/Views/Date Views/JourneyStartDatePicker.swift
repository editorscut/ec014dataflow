import SwiftUI

struct JourneyStartDatePicker {
  @Bindable var journey: Journey
}

extension JourneyStartDatePicker: View {
  var body: some View {
    DatePicker("Start Date Picker", 
               selection: $journey.startDate)
    .padding()
  }
}

#Preview {
  JourneyStartDatePicker(journey: Journey())
}
