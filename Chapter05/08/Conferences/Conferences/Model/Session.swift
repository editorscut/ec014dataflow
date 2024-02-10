import SwiftData

@Model
class Session {
  var title: String
  
  @Relationship(inverse: \Presenter.sessions)
  var presenters: [Presenter] = []
  
  @Relationship(deleteRule: .cascade,
                inverse: \TimeSlot.session)
  var timeSlot: TimeSlot?
  
  init(title: String) {
    self.title = title
  }
}
