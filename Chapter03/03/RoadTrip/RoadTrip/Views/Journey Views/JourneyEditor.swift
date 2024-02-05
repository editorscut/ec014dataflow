import SwiftUI

struct JourneyEditor {
  @Binding var journey: Journey
}

extension JourneyEditor: View {
  var body: some View {
    let _ = Self._printChanges()
    TransportationTypePicker(transportationType: $journey.transportationType)
  }
}

#Preview {
  JourneyEditor(journey: .constant(Journey()))
}
