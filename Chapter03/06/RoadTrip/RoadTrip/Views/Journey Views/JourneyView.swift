import SwiftUI

struct JourneyView {
  @State private var journey = controller.initialJourney
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
    .task {
      for await journey in controller.journeyStream {
        self.journey = journey
      }
    }
  }
}

#Preview {
  JourneyView()
}
