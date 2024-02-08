import SwiftUI

struct SessionPresentersView {
}

extension SessionPresentersView: View {
  var body: some View {
    Text("No Presenters yet")
      .contentShape(Rectangle())
      .onTapGesture {
        print("tapped")
      }
  }
}

#Preview {
  SessionPresentersView()
}
