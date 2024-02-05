import SwiftUI

struct EditableJourneyView {
  @State private var journey = Journey()
}

extension EditableJourneyView: View {
  var body: some View {
    let _ = Self._printChanges()
    VStack {
      JourneyView(journey: journey)
      JourneyEditor(journey: journey)
    }
  }
}

#Preview {
  EditableJourneyView()
}
