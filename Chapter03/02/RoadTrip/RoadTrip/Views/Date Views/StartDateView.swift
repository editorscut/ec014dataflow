import SwiftUI

struct StartDateView {
  let startDate: Date
}

extension StartDateView: View {
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
  StartDateView(startDate: Date())
}
