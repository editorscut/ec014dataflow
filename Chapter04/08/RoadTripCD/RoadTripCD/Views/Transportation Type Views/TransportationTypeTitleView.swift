import SwiftUI

struct TransportationTypeTitleView {
  let title: String
}

extension TransportationTypeTitleView: View {
  var body: some View {
    Text(title)
      .padding()
  }
}

#Preview {
  TransportationTypeTitleView(title: TransportationType.walkOrRun.description)
}
