fileprivate let days = 2
fileprivate let slotsPerDay = 8

extension TimeSlot {
  static var totalSlots: Int {
    days * slotsPerDay
  }
  
  static func slot(for index: Int) -> String {
    guard index > 0 else {return "Open"}
    return "Day \((index - 1) / slotsPerDay + 1) - Slot \((index - 1) % slotsPerDay + 1)"
  }
}
