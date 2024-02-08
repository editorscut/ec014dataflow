import SwiftUI

struct AddSessionView {
  @Binding var isAddingSession: Bool
  @State private var title: String = ""
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
               role: .cancel,
               action: dismiss)
        Button("Save",
               action: save)
      }
      Spacer()
    }
  }
}

extension AddSessionView {
  private func dismiss() {
    isAddingSession = false
  }
  private func save() {
    dismiss()
  }
}

#Preview {
  AddSessionView(isAddingSession: .constant(false))
}
