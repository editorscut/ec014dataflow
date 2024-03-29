import SwiftUI

struct EditableJourneyView {
  @Binding var journey: Journey
}

extension EditableJourneyView: View {
  var body: some View {
    let _ = Self._printChanges()
    VStack {
      JourneyView(journey: journey)
      JourneyEditor(journey: $journey)
    }
  }
}

#Preview {
  EditableJourneyView(journey: .constant(Journey()))
}
