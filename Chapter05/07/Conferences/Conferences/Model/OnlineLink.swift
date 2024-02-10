import SwiftData

@Model
class OnlineLink {
  let linkType: LinkType
  var urlString: String
  var presenter: Presenter?
  
  init(linkType: LinkType, 
       urlString: String) {
    self.linkType = linkType
    self.urlString = urlString
  }
}
