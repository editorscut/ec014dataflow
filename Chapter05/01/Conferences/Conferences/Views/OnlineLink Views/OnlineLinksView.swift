import SwiftUI

struct OnlineLinksView {
}

extension OnlineLinksView: View {
  var body: some View {
    ForEach(LinkType.allCases) { linkType in
      Section( linkType.description) {
        IndividualOnlineLinkView(linkType: linkType)
      }
    }
  }
}
