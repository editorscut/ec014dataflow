import Foundation
import SwiftData


@Model public class Journey {
    var duration: Double? = 0.0
    var startDate: Date?
    var transportationTypeName: String?
    var startingPoint: Location?
    public init() {

    }
    
}
