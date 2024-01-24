import SwiftUI

struct JourneyStartDateView {
  let startDate: Date
}

extension JourneyStartDateView: View {
  var body: some View {
    let _ = Self._printChanges()
    HStack {
      Text(startDate
        .formatted(.dateTime
          .month(.abbreviated)
          .day(.defaultDigits)))
      Text(startDate, style: .time)
    }
  }
}

#Preview {
  JourneyStartDateView(startDate: Date())
}
