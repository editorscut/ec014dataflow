import SwiftUI

struct JourneyEditor {
  let controller: JourneyController
}

extension JourneyEditor: View {
  var body: some View {
    let _ = Self._printChanges()
    TransportationTypePicker(controller: controller)
  }
}

#Preview {
  JourneyEditor(controller: JourneyController())
}
