import Foundation

struct Persistence {
  static func save(_ journies: [Journey]) {
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
        .appendingPathComponent("JourniesData"),
         FileManager.default.fileExists(atPath: url.path){
        return url
      } else {
        throw URLError(.fileDoesNotExist)
      }

    }
  }
}
