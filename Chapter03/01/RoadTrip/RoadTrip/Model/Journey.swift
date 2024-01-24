import Foundation

struct Journey {
  var transportationType: TransportationType
  var startDate: Date
  var duration: TimeInterval
  
  init(transportationType: TransportationType = TransportationType.random(),
       startDate: Date = Date().addingTimeInterval(TimeInterval.random(in: -7 * 24 * 60 * 60.0...0)),
       duration: TimeInterval = TimeInterval.random(in: 60...3600)) {
    self.transportationType = transportationType
    self.startDate = startDate
    self.duration = duration
  }
}

extension Journey {
  var endDate: Date {
    startDate.addingTimeInterval(duration)
  }
}
