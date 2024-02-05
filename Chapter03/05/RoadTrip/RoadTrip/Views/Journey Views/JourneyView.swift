import SwiftUI

struct JourneyView {
  @EnvironmentObject private var controller: JourneyController
}

extension JourneyView: View {
  var body: some View {
    let _ = Self._printChanges()
    HStack {
      TransportationTypeView(transportationType: journey.transportationType)
      Spacer()
      DateView(startDate: journey.startDate,
                      endDate: journey.endDate)
    }
    .padding()
  }
}

extension JourneyView {
  private var journey: Journey {
    controller.journey
  }
}

#Preview {
  JourneyView()
    .environmentObject(JourneyController())
}
