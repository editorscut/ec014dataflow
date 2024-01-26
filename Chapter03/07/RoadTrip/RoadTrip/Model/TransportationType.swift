let types = TransportationType.allCases

enum TransportationType: Int, Codable, CaseIterable, Hashable {
  case walkOrRun
  case skateboard
  case scooter
  case bike
  case car
  case hiredCar
  case bus
  case lightRail
}

extension TransportationType: Identifiable {
  var id: Int {
    rawValue
  }
}

extension TransportationType: CustomStringConvertible {
  var description: String {
    switch self {
    case .walkOrRun: "Walk/Run"
    case .skateboard: "Skateboard"
    case .scooter: "Scooter"
    case .bike: "Bike"
    case .car: "Car"
    case .hiredCar: "Shared Ride"
    case .bus: "Bus"
    case .lightRail: "Light Rail"
    }
  }
}

extension TransportationType {
  var iconName: String {
    switch self {
    case .walkOrRun: "figure.walk"
    case .skateboard: "skateboard"
    case .scooter: "scooter"
    case .bike: "bicycle"
    case .car: "car"
    case .hiredCar: "car.front.waves.up"
    case .bus: "bus"
    case .lightRail: "lightrail"
    }
  }
}

extension TransportationType {
  static func random() -> TransportationType {
    types.randomElement() ?? .walkOrRun
  }
}


