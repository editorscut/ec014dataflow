import Foundation

struct Persistence {
  static func save(_ journeys: [Journey]) {
    do {
      let fileURL = try Persistence.url
      let json = try JSONEncoder().encode(journeys)
      try json.write(to: fileURL)
    } catch {
      print(error.localizedDescription, "not able to save journeys")
    }
  }
  
  static func retrieve() -> [Journey] {
    do {
      let fileURL = try Persistence.url
      let data = try Data(contentsOf: fileURL)
      let journeys = try JSONDecoder().decode([Journey].self,
                                              from: data)
      return journeys
    } catch {
      print(error.localizedDescription, "not able to retrieve journeys")
      return [Journey]()
    }
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
