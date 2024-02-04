import Foundation
import CoreData

@objc(Location)
public class Location: NSManagedObject {
}

extension Location {
  convenience init(notHome: Bool,
                   context: NSManagedObjectContext) {
    self.init(context: context)
    self.latitude = notHome ? Double.random(in: 34...42) : 41.5
    self.longitude = notHome ? Double.random(in: -117...(-75)) : -81.6
  }
}
