import SwiftUI

struct JourneyEndTimeView {
  let endDate: Date
}

extension JourneyEndTimeView: View {
  var body: some View {
    Text(endDate, style: .time)
  }
}

#Preview {
  JourneyEndTimeView(endDate: Date())
}
