import SwiftUI

struct JourneyEditorView {
  let controller: JourneyController
}

extension JourneyEditorView: View {
  var body: some View {
    let _ = Self._printChanges()
    TransportationTypePicker(controller: controller)
  }
}

#Preview {
  JourneyEditorView(controller: JourneyController())
}
