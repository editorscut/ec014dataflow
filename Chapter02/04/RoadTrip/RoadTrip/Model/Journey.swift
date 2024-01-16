import Foundation

struct Journey {
  var transportationType: TransportationType
  let startDate: Date
  var duration: TimeInterval
}

extension Journey {
  var endDate: Date {
    startDate.addingTimeInterval(duration)
  }
}
