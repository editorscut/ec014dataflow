enum LinkType: String, Codable, CaseIterable {
  case website
  case mastodon = "Mastodon"
  case linkedin = "LinkedIn"
  case github = "GitHub"
}

extension LinkType: CustomStringConvertible {
  var description: String {
    rawValue
  }
}

extension LinkType: Identifiable {
  var id: Self {
    self
  }
}
