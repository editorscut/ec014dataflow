extension Presenter {
  func link(for linkType: LinkType) -> OnlineLink? {
    // return first link in links with this linkType
    nil
  }
  
  func setURL(for linkType: LinkType,
              to urlString: String) {
    if let _ = link(for: linkType) {
      // change link's urlString
    } else {
      // append a new OnlineLink for this linkType and urlString
    }
  }
}
