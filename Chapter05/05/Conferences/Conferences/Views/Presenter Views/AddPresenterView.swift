import SwiftUI

struct AddPresenterView {
  @State private var name: String = ""
  @Environment(\.dismiss) private var dismiss
}

extension AddPresenterView: View {
  var body: some View {
    VStack(spacing: 50) {
      TextField("Name", text: $name)
        .multilineTextAlignment(.center)
        .onSubmit {if !name.isEmpty  { save() } }
      HStack(spacing: 40) {
        Button("Cancel",
               role: .cancel) {
          dismiss()
        }
        Button("Save",
               action: save)
        .disabled(name.isEmpty)
      }
    }
  }
}

extension AddPresenterView {
  private func save() {
    dismiss()
  }
}

#Preview {
  AddPresenterView()
}
