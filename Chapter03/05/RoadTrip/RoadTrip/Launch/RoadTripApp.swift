import SwiftUI

@main
struct RoadTripApp {
  @StateObject private var controller = JourneyController()
}

extension RoadTripApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
    .environmentObject(controller)
  }
}
