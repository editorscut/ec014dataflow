import Observation

@Observable
class JourneyHistory {
  private(set) var journeys: [Journey]
  
  init() {
    journeys = Persistence.retrieve()
  }
}

extension JourneyHistory {
  func save() {
    Persistence.save(journeys)
  }
  
  func addJourney() {
    journeys.append(Journey())
    save()
  }
  
  func deleteJourney(at index: Int) {
    journeys.remove(at: index)
    save()
  }
}

