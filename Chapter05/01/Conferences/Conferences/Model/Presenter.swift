class Presenter {
  let name: String
  var sessions: [Session] = []
  var links: [OnlineLink] = []
  
  init(name: String) {
    self.name = name
  }
}
