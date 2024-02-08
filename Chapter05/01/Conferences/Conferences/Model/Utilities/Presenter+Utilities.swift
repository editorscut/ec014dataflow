extension Presenter {
  func link(for linkType: LinkType) -> OnlineLink? {
    links?.first(where: {$0.linkType == linkType})
  }
  
  func setURL(for linkType: LinkType,
              to urlString: String) {
    if let link = link(for: linkType) {
      link.urlString = urlString
    } else {
      let link = OnlineLink(linkType: linkType,
                            urlString: urlString,
                            presenter: self)
      if var links {
        links.append(link)
      } else {
        links = [link]
      }
    }
  }
}
