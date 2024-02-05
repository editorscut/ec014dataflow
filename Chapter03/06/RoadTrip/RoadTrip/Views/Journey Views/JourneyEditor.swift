import SwiftUI

struct JourneyEditor {
}

extension JourneyEditor: View {
  var body: some View {
    let _ = Self._printChanges()
    TransportationTypePicker()
  }
}

#Preview {
  JourneyEditor()
}
