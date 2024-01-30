import SwiftUI

struct JourneyEditorView {
  let journey: Journey
}

extension JourneyEditorView: View {
  var body: some View {
    let _ = Self._printChanges()
    TransportationTypePicker(journey: journey)
  }
}

#Preview {
  JourneyEditorView(journey: Journey())
}
