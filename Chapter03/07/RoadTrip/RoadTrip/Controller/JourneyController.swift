//let controller = JourneyController()

class JourneyController {
  private var journey = Journey()
  let (journeyStream, continuation) = AsyncStream.makeStream(of: Journey.self)
  let initialJourney: Journey
  init() {
    initialJourney = journey
  }
}

extension JourneyController {
  func changeTransportationType(to newTransportationType: TransportationType) {
    journey = Journey(transportationType: newTransportationType,
                      startDate: journey.startDate,
                      duration: journey.duration)
    continuation.yield(journey)
  }
}
