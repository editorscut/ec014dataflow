import SwiftUI

struct JourneyStartDateView {
  let startDate: Date
}

extension JourneyStartDateView: View {
  var body: some View {
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
