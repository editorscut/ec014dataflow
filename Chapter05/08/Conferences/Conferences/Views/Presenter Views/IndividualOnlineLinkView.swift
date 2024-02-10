import SwiftUI

struct IndividualOnlineLinkView {
  let presenter: Presenter
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
    .onSubmit {
      save()
    }
    .onAppear {
      urlString = presenter.link(for: linkType)?.urlString ?? ""
    }
    .onDisappear {
      save()
    }
  }
}

extension IndividualOnlineLinkView {
  private func save() {
    guard let storedURLString = presenter.link(for: linkType)?.urlString,
          storedURLString != urlString  else { return }
    presenter.setURL(for: linkType,
                     to: urlString)
  }
}

#Preview {
  IndividualOnlineLinkView(presenter: previewPresenter,
                           linkType: .website)
}
