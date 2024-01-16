import SwiftUI

struct TransportationTypeImageView {
  let imageName: String
}

extension TransportationTypeImageView: View {
  var body: some View {
    let _ = print(self)
    Image(systemName: imageName)
      .imageScale(.large)
      .foregroundStyle(.tint)
  }
}

#Preview {
  TransportationTypeImageView(imageName: TransportationType.walkOrRun.iconName)
}
