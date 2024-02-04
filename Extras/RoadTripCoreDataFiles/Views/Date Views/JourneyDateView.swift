import SwiftUI

struct JourneyDateView {
  let startDate: Date
  let endDate: Date
}

extension JourneyDateView: View {
  var body: some View {
    VStack(alignment: .trailing) {
      JourneyStartDateView(startDate: startDate)
      JourneyEndTimeView(endDate: endDate)
    }
    .font(.caption)
    .padding()
  }
}

#Preview {
  JourneyDateView(startDate: Date(),
                  endDate: Date().addingTimeInterval(1437))
}
