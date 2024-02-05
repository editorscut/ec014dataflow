import SwiftUI

struct JourneyEditor {
  let journey: Journey
}

extension JourneyEditor: View {
  var body: some View {
    let _ = Self._printChanges()
    TransportationTypePicker(journey: journey)
  }
}

#Preview {
  JourneyEditor(journey: Journey())
}
