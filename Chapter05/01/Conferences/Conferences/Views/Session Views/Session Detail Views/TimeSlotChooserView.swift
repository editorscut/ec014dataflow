import SwiftUI

struct TimeSlotChooserView {
  @State private var selectedTimeSlot: Int = 0
}

extension TimeSlotChooserView: View {
  var body: some View {
    Menu {
      ForEach(0..<17) { index in
        Button(TimeSlot.slot(for: index)) {
          selectedTimeSlot = index
        }
      }
    } label: {
      Text(TimeSlot.slot(for: selectedTimeSlot))
        .foregroundColor(.primary)
    }
    .onChange(of: selectedTimeSlot, initial: false) { oldValue, newValue in
      print("Value changed from \(TimeSlot.slot(for: oldValue)) to \(TimeSlot.slot(for: newValue))")
    }
  }
}

#Preview {
  TimeSlotChooserView()
}
