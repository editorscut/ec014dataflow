import SwiftUI

struct StartDateView {
  let startDate: Date
}

extension StartDateView: View {
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
  StartDateView(startDate: Date())
}
