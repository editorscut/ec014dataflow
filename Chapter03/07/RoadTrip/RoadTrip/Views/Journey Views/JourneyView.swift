import SwiftUI

struct JourneyView {
  @Environment(Journey.self) private var journey
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
  JourneyView()
}
