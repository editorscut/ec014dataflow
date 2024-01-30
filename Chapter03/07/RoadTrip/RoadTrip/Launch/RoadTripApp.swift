import SwiftUI

@main
struct RoadTripApp {
  @State private var journey = Journey()
}

extension RoadTripApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
    .environment(journey)
  }
}
