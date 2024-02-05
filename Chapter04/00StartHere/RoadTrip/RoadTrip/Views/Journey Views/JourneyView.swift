import SwiftUI

struct JourneyView {
  let journey: Journey
}

extension JourneyView: View {
  var body: some View {
    HStack {
      TransportationTypeView(transportationType: journey.transportationType)
      Spacer()
      DateView(startDate: journey.startDate,
                      endDate: journey.endDate)
    }
    .padding()
  }
}


#Preview {
  JourneyView(journey: Journey())
}
