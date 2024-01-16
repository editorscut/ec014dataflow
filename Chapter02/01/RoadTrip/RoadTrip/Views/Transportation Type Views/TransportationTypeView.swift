import SwiftUI

struct TransportationTypeView: View {
  var body: some View {
    HStack {
      let _ = print(self)
     TransportationTypeImageView()
      TransportationTypeTitleView()
    }
  }
}

#Preview {
  TransportationTypeView()
}
