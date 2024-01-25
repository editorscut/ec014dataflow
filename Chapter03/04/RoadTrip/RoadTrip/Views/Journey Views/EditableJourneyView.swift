import SwiftUI

struct EditableJourneyView {
  @ObservedObject var controller: JourneyController
}

extension EditableJourneyView: View {
  var body: some View {
    let _ = Self._printChanges()
    VStack {
      JourneyView(journey: controller.journey)
      JourneyEditorView(controller: controller)
    }
  }
}

#Preview {
  EditableJourneyView(controller: JourneyController())
}
