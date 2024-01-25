import SwiftUI

struct JourneyEditorView {
}

extension JourneyEditorView: View {
  var body: some View {
    let _ = Self._printChanges()
    TransportationTypePicker()
  }
}

#Preview {
  JourneyEditorView()
    .environmentObject(JourneyController())
}
