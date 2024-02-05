import SwiftUI

struct EditableJourneyView {
}

extension EditableJourneyView: View {
  var body: some View {
    let _ = Self._printChanges()
    VStack {
      JourneyView()
      JourneyEditor()
    }
  }
}

#Preview {
  EditableJourneyView()
    .environmentObject(JourneyController())
}
