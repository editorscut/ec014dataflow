import SwiftUI

struct IndividualPresenterView {
}

extension IndividualPresenterView: View {
  var body: some View {
    List {
      Section("Sessions") {
        Text("Session Title for presenter")
      }
      ForEach(LinkType.allCases) { linkType in
        Section( linkType.description) {
          IndividualOnlineLinkView(linkType: linkType)
        }
      }
    }
    .navigationTitle("Presenter's name")
  }
}

#Preview {
  NavigationStack {
    IndividualPresenterView()
  }
}
