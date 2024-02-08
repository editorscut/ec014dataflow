import SwiftUI

struct IndividualPresenterView {
}

extension IndividualPresenterView: View {
  var body: some View {
    List {
      Section("Sessions") {
        Text("Session Title for presenter")
      }
      OnlineLinksView()
    }
    .navigationTitle("Presenter's name")
  }
}

#Preview {
  IndividualPresenterView()
}
