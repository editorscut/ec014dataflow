import SwiftUI

struct AddSessionView {
  @State private var title: String = ""
  @Environment(\.dismiss) private var dismiss
}

extension AddSessionView: View {
  var body: some View {
    VStack(spacing: 50) {
      Spacer()
      TextField("Title", text: $title)
        .multilineTextAlignment(.center)
      List {
        Section("Must have at least one presenter:") {
          SessionPresentersView()
        }
      }
      HStack(spacing: 40) {
        Button("Cancel",
               role: .cancel) {
          dismiss()
        }
        Button("Save",
               action: save)
      }
      Spacer()
    }
  }
}

extension AddSessionView {
  private func save() {
    dismiss()
  }
}

#Preview {
  AddSessionView()
}
