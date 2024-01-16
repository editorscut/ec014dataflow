import SwiftUI

struct TransportationTypeView: View {
  var body: some View {
    HStack {
     TransportationTypeImageView()
      TransportationTypeTitleView()
    }
  }
}

#Preview {
  TransportationTypeView()
}
