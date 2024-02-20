import Foundation
import SwiftData


@Model public class Location {
    var latitude: Double? = 0.0
    var longitude: Double? = 0.0
    var journeysStartingHere: [Journey]?
    public init() {

    }
    
}
