import SwiftUI

struct DateView {
  let startDate: Date
  let endDate: Date
}

extension DateView: View {
  var body: some View {
    VStack(alignment: .trailing) {
      StartDateView(startDate: startDate)
      EndTimeView(endDate: endDate)
    }
    .font(.caption)
    .padding()
  }
}

#Preview {
  DateView(startDate: Date(),
                  endDate: Date().addingTimeInterval(1437))
}
