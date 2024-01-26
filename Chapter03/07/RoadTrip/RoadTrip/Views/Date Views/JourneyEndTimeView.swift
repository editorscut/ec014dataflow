import SwiftUI

struct JourneyEndTimeView {
  let endDate: Date
}

extension JourneyEndTimeView: View {
  var body: some View {
    let _ = Self._printChanges()
    Text(endDate, style: .time)
  }
}

#Preview {
  JourneyEndTimeView(endDate: Date())
}
