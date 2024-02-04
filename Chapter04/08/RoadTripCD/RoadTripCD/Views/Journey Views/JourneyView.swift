import SwiftUI

struct JourneyView {
  @ObservedObject var journey: Journey
}

extension JourneyView: View {
  var body: some View {
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
