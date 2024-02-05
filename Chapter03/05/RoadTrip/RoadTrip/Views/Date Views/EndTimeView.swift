import SwiftUI

struct EndTimeView {
  let endDate: Date
}

extension EndTimeView: View {
  var body: some View {
    let _ = Self._printChanges()
    Text(endDate, style: .time)
  }
}

#Preview {
  EndTimeView(endDate: Date())
}
