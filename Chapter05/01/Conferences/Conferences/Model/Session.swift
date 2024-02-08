class Session {
  let title: String
  var presenters: [Presenter] = []
  var timeSlot: TimeSlot?
  
  init(title: String) {
    self.title = title
  }
}
