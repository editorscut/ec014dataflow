import SwiftUI

struct JourneyEditor {
  @Bindable var journey: Journey
}

extension JourneyEditor: View {
  var body: some View {
    VStack {
      TransportationTypePicker(transportationType: $journey.transportationType)
      StartDatePicker(startDate: $journey.startDate)
      DurationSlider(duration: $journey.duration)
    }
  }
}

#Preview {
  JourneyEditor(journey: Journey())
}
