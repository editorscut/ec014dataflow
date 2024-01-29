import SwiftUI

struct JourneyEditorView {
  let journey: Journey
}

extension JourneyEditorView: View {
  var body: some View {
    VStack {
      TransportationTypePicker(journey: journey)
      JourneyStartDatePicker(journey: journey)
      JourneyDurationSelector(journey: journey)
    }
  }
}

#Preview {
  JourneyEditorView(journey: Journey())
}
