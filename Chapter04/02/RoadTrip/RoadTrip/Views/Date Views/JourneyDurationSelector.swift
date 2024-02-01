import SwiftUI

struct JourneyDurationSelector {
  @Binding var duration: TimeInterval
}

extension JourneyDurationSelector: View {
  var body: some View {
    Slider(value: $duration,
           in: 50...3600)
    .padding()
  }
}

#Preview {
  JourneyDurationSelector(duration: .constant(1000))
}
