import SwiftData

@Model
class Presenter {
  let name: String
  var sessions: [Session] = []
  
  @Relationship(deleteRule: .cascade,
                inverse: \OnlineLink.presenter)
  var links: [OnlineLink]?
  
  init(name: String) {
    self.name = name
  }
}
