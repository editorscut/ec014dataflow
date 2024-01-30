import SwiftUI

struct JourneyEditorView {
  @Bindable var journey: Journey
}

extension JourneyEditorView: View {
  var body: some View {
    let _ = Self._printChanges()
    VStack {
      TransportationTypePicker(transportationType: $journey.transportationType)
      JourneyStartDatePicker(startDate: $journey.startDate)
      JourneyDurationSelector(duration: $journey.duration)
    }
  }
}

#Preview {
  JourneyEditorView(journey: Journey())
}
