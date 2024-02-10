import SwiftUI

struct AddPresenterView {
  @Binding var isAddingPresenter: Bool
  @State private var name: String = ""
  @Environment(\.modelContext) private var context
}

extension AddPresenterView: View {
  var body: some View {
    VStack(spacing: 50) {
      TextField("Name", text: $name)
        .multilineTextAlignment(.center)
        .onSubmit {if !name.isEmpty  { save() } }
      HStack(spacing: 40) {
        Button("Cancel",
               role: .cancel,
               action: dismiss)
        Button("Save",
               action: save)
        .disabled(name.isEmpty)
      }
    }
  }
}

extension AddPresenterView {
  private func dismiss() {
    isAddingPresenter = false
  }
  private func save() {
    context.insert(Presenter(name: name))
    dismiss()
  }
}

#Preview {
  AddSessionView(isAddingSession: .constant(false))
}
