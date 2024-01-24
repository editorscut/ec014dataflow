import SwiftUI

struct JourneyEditorView {
  @Binding var journey: Journey
}

extension JourneyEditorView: View {
  var body: some View {
    let _ = Self._printChanges()
    TransportationTypePicker(transportationType: $journey.transportationType)
  }
}

#Preview {
  JourneyEditorView(journey: .constant(Journey()))
}
