import SwiftData

@Model
class Session {
  let title: String
  
  @Relationship(inverse: \Presenter.sessions)
  var presenters: [Presenter] = []
  
  @Relationship(inverse: \TimeSlot.session)
  var timeSlot: TimeSlot?
  
  init(title: String) {
    self.title = title
  }
}
