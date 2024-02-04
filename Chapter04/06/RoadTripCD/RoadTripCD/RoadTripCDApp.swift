import SwiftUI

@main
struct RoadTripCDApp: App {
  let persistenceController = PersistenceController.shared
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environment(\.managedObjectContext, 
                      persistenceController.container.viewContext)
    }
  }
}
