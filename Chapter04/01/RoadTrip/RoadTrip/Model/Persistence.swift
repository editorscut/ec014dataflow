import Foundation

struct Persistence {
  static func save(_ journeys: [Journey]) {
  }
  
  static func retrieve() -> [Journey] {
    return [Journey]()
  }
}

extension Persistence {
  static var url: URL {
    get throws {
      if let url
          = FileManager
        .default
        .urls(for: .documentDirectory,
              in: .userDomainMask)
          .first?
        .appendingPathComponent("JourniesData") {
        return url
      } else {
        throw URLError(.badURL)
      }
    }
  }
}

