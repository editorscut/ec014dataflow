import SwiftUI

struct JourneyView {
  let journey: Journey
}

extension JourneyView: View {
  var body: some View {
    let _ = Self._printChanges()
    HStack {
      TransportationTypeView(transportationType: journey.transportationType)
      Spacer()
      JourneyDateView(startDate: journey.startDate,
                      endDate: journey.endDate)
    }
    .padding()
  }
}


#Preview {
  JourneyView(journey: Journey())
}
