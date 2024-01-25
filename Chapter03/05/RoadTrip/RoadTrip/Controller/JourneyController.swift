import Combine

class JourneyController: ObservableObject {
  @Published private(set) var journey = Journey()
}

extension JourneyController {
  func changeTransportationType(to newTransportationType: TransportationType) {
   journey = Journey(transportationType: newTransportationType,
                     startDate: journey.startDate,
                     duration: journey.duration)
  }
}
