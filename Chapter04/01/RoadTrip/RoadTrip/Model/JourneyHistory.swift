import Observation

@Observable
class JourneyHistory {
  private(set) var journeys: [Journey] = [Journey()]
}

extension JourneyHistory {
  func addJourney() {
    journeys.append(Journey())
  }
  
  func deleteJourney(at index: Int) {
    journeys.remove(at: index)
  }
}

