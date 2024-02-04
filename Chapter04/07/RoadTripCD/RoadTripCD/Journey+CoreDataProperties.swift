import Foundation
import CoreData


extension Journey {
  
  @nonobjc public class func fetchRequest() -> NSFetchRequest<Journey> {
    return NSFetchRequest<Journey>(entityName: "Journey")
  }
  
  @NSManaged public var duration: Double
  @NSManaged public var startDate: Date
  @NSManaged public var transportationTypeName: String
  @NSManaged public var startingPoint: Location
  
}

extension Journey : Identifiable {
  
}

extension Journey {
  var endDate: Date {
    startDate.addingTimeInterval(duration)
  }
}

extension Journey {
  var transportationType: TransportationType {
    get {
      TransportationType.allCases
        .first{$0.description == transportationTypeName} ?? .walkOrRun
    }
    set {
      transportationTypeName = newValue.description
    }
  }
}
