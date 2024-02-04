import SwiftUI

struct JourneyEditorView {
  @ObservedObject var journey: Journey
}

extension JourneyEditorView: View {
  var body: some View {
    VStack {
      TransportationTypePicker(transportationType: $journey.transportationType)
      JourneyStartDatePicker(startDate: $journey.startDate)
      JourneyDurationSelector(duration: $journey.duration)
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
  JourneyEditorView(journey: Journey())
}
