import SwiftUI

struct DurationSlider {
  @Binding var duration: TimeInterval
}

extension DurationSlider: View {
  var body: some View {
    Slider(value: $duration,
           in: 50...3600)
    .padding()
  }
}

#Preview {
  DurationSlider(duration: .constant(1000))
}
