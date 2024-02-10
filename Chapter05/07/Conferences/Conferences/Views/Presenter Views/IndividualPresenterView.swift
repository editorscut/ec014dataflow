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
          IndividualOnlineLinkView(presenter: presenter,
                                   linkType: linkType)
        }
      }
    }
    .navigationTitle(presenter.name)
  }
}

#Preview {
  NavigationStack {
    IndividualPresenterView(presenter: previewPresenter)
      .modelContainer(previewContainer)
  }
}

