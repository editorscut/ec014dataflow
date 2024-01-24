import SwiftUI

struct EditableJourneyView {
  @Binding var journey: Journey
}

extension EditableJourneyView: View {
  var body: some View {
    VStack {
      JourneyView(journey: journey)
      TransportationTypePicker(transportationType: $journey.transportationType)
    }
  }
}

#Preview {
  EditableJourneyView(journey: .constant(Journey()))
}
