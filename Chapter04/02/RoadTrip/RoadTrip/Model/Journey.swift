import Foundation
import Observation

@Observable
class Journey: Identifiable, Codable {
  var transportationType: TransportationType
  var startDate: Date
  var duration: TimeInterval
  var id: UUID
  
  init(transportationType: TransportationType = TransportationType.random(),
       startDate: Date = Date().addingTimeInterval(TimeInterval.random(in: -7 * 24 * 60 * 60.0...0)),
       duration: TimeInterval = TimeInterval.random(in: 60...3600),
       id: UUID = UUID()) {
    self.transportationType = transportationType
    self.startDate = startDate
    self.duration = duration
    self.id = id
  }
}

extension Journey {
  var endDate: Date {
    startDate.addingTimeInterval(duration)
  }
}
