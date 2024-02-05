import SwiftUI

struct JourneyEditor {
  @ObservedObject var journey: Journey
}

extension JourneyEditor: View {
  var body: some View {
    VStack {
      TransportationTypePicker(transportationType: $journey.transportationType)
      StartDatePicker(startDate: $journey.startDate)
      DurationSlider(duration: $journey.duration)
    }
    .onDisappear {
      do {
        try PersistenceController.shared
          .container.viewContext.save()
      } catch {
        fatalError("Couldn't save updates to journey")
      }
    }
  }
}

#Preview {
  JourneyEditor(journey: Journey())
}
