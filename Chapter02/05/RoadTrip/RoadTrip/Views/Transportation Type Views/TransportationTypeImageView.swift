import SwiftUI

struct TransportationTypeImageView {
  let imageName: String
}

extension TransportationTypeImageView: View {
  var body: some View {
    let _ = Self._printChanges()
    Image(systemName: imageName)
      .imageScale(.large)
      .foregroundStyle(.tint)
      .onAppear { print("TransportationTypeImageView appears") }
      .onChange(of: imageName){ oldValue, newValue in
        print("imageName changed from \(oldValue) to \(newValue)")
      }
  }
}

#Preview {
  TransportationTypeImageView(imageName: TransportationType.walkOrRun.iconName)
}
