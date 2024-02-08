import SwiftData

@Model
class OnlineLink {
  let linkType: LinkType
  var urlString: String
  let presenter: Presenter
  
  init(linkType: LinkType, 
       urlString: String,
       presenter: Presenter) {
    self.linkType = linkType
    self.urlString = urlString
    self.presenter = presenter
  }
}
