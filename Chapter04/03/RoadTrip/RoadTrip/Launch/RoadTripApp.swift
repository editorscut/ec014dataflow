import SwiftUI
import SwiftData

@main
struct RoadTripApp {
}

extension RoadTripApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
    .modelContainer(for: Journey.self)
  }
}
