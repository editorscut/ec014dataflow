import SwiftUI

struct JourneyDurationSelector {
  @Bindable var journey: Journey
}

extension JourneyDurationSelector: View {
  var body: some View {
    Slider(value: $journey.duration,
           in: 60...3600)
    .padding()
  }
}

#Preview {
  JourneyDurationSelector(journey: Journey())
}
