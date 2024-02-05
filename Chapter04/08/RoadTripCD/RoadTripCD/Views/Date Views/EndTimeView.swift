import SwiftUI

struct EndTimeView {
  let endDate: Date
}

extension EndTimeView: View {
  var body: some View {
    Text(endDate, style: .time)
  }
}

#Preview {
  EndTimeView(endDate: Date())
}
