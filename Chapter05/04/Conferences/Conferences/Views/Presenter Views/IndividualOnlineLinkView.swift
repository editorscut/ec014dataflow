import SwiftUI

struct IndividualOnlineLinkView {
  let linkType: LinkType
  @State private var urlString: String = ""
}

extension IndividualOnlineLinkView: View {
  var body: some View {
    TextField("URL for \(linkType.description)",
              text: $urlString)
    .keyboardType(.URL)
    .textInputAutocapitalization(.never)
    .autocorrectionDisabled()
    .multilineTextAlignment(.center)
  }
}

#Preview {
  IndividualOnlineLinkView(linkType: .website)
}
