import SwiftUI
import SwiftData

struct IndividualPresenterView {
  let presenter: Presenter
}

extension IndividualPresenterView: View {
  var body: some View {
    List {
      Section("Sessions") {
        ForEach(presenter.sessions) {session in
          Text(session.title)
        }     
      }
      ForEach(LinkType.allCases) { linkType in
        Section( linkType.description) {
          IndividualOnlineLinkView(linkType: linkType)
        }
      }
    }
    .navigationTitle(presenter.name)
  }
}

#Preview {
  NavigationView {
    IndividualPresenterView(presenter: previewPresenter)
      .modelContainer(previewContainer)
  }
}
