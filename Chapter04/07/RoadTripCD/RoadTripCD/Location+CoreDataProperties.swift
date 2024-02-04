import Foundation
import CoreData
import CoreLocation


extension Location {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Location> {
        return NSFetchRequest<Location>(entityName: "Location")
    }
    @NSManaged public var latitude: Double
    @NSManaged public var longitude: Double
    @NSManaged public var journeysStartingHere: Set<Location>?
}

// MARK: Generated accessors for journeysStartingHere
extension Location {

    @objc(addJourneysStartingHereObject:)
    @NSManaged public func addToJourneysStartingHere(_ value: Journey)

    @objc(removeJourneysStartingHereObject:)
    @NSManaged public func removeFromJourneysStartingHere(_ value: Journey)

    @objc(addJourneysStartingHere:)
    @NSManaged public func addToJourneysStartingHere(_ values: NSSet)

    @objc(removeJourneysStartingHere:)
    @NSManaged public func removeFromJourneysStartingHere(_ values: NSSet)

}

extension Location : Identifiable {

}

extension Location {
  var coordinates: CLLocationCoordinate2D {
    CLLocationCoordinate2D(latitude: latitude,
                           longitude: longitude)
  }
}
