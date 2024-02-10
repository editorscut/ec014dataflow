import SwiftUI
import SwiftData

@main
struct ConferencesApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
    .modelContainer(for: Session.self)
  }
}
