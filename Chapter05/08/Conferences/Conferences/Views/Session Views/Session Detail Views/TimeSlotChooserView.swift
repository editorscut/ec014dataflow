import SwiftUI
import SwiftData

struct TimeSlotChooserView {
  let session: Session
  @State private var selectedTimeSlot: Int = 0
  @Query(sort: \TimeSlot.number) private var usedTimeSlots: [TimeSlot]
  @Environment(\.modelContext) private var context
}

extension TimeSlotChooserView: View {
  var body: some View {
    Menu {
      ForEach(0..<17) { index in
        Button(TimeSlot.slot(for: index)) {
          selectedTimeSlot = index
        }
        .disabled(usedTimeSlots.map(\.number).contains(index))
      }
    } label: {
      Text(TimeSlot.slot(for: selectedTimeSlot))
        .foregroundColor(.primary)
    }
    .onAppear {
      if let selectedTimeSlot = session.timeSlot {
        self.selectedTimeSlot = selectedTimeSlot.number
      }
    }
    .onChange(of: selectedTimeSlot, initial: false) { oldValue, newValue in
      if let timeSlot = session.timeSlot {
        context.delete(timeSlot)
      }
      if newValue > 0 {
        session.timeSlot = TimeSlot(number: newValue)
      }
    }
  }
}

#Preview {
  TimeSlotChooserView(session: previewSession)
    .modelContainer(previewContainer)
}
