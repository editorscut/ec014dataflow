import Foundation
import CoreData

@objc(Journey)
public class Journey: NSManagedObject {

}

extension Journey {
  convenience init() {
    let context = PersistenceController.shared.container.newBackgroundContext()
    self.init(context: context)
    transportationTypeName = TransportationType.random().description
    startDate =  Date().addingTimeInterval(TimeInterval.random(in: -7 * 24 * 60 * 60.0...0))
    duration = TimeInterval.random(in: 60...3600)
    startingPoint = Location(notHome: true,
                             context: context)
    do {
      try context.save()
    } catch {
      let nsError = error as NSError
      fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
    }
  }
}
