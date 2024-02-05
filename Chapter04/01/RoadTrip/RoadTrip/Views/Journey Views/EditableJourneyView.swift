import SwiftUI

struct EditableJourneyView {
  let journey: Journey
}

extension EditableJourneyView: View {
  var body: some View {
    VStack {
      JourneyView(journey: journey)
      JourneyEditor(journey: journey)
    }
  }
}

#Preview {
  EditableJourneyView(journey: Journey())
}
