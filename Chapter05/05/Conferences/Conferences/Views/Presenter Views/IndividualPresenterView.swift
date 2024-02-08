import SwiftUI
import SwiftData

struct IndividualPresenterView {
  let presenter: Presenter
}

extension IndividualPresenterView: View {
  var body: some View {
    List {
      Section("Sessions") {
        Text("Session Title for presenter")
      }
      OnlineLinksView()
    }
    .navigationTitle(presenter.name)
  }
}

#Preview {
  IndividualPresenterView(presenter: Presenter(name: "Emily"))
    .modelContainer(previewContainer)
}
