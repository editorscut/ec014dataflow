import SwiftUI
import SwiftData

struct AddSessionView {
  @Binding var isAddingSession: Bool
  @State private var title: String = ""
  @State private var selectedPresenters: [Presenter] = []
  @Environment(\.modelContext) private var context
}

extension AddSessionView: View {
  var body: some View {
    VStack(spacing: 50) {
      Spacer()
      TextField("Title", text: $title)
        .multilineTextAlignment(.center)
        .onSubmit {
          if !title.isEmpty && !selectedPresenters.isEmpty {
            save()
          }
        }
      List {
        Section("Must have at least one presenter:") {
          SessionPresentersView(selectedPresenters: $selectedPresenters)
        }
      }
      HStack(spacing: 40) {
        Button("Cancel",
               role: .cancel,
               action: dismiss)
        Button("Save",
               action: save)
        .disabled(title.isEmpty || selectedPresenters.isEmpty)
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
    let session = Session(title: title)
    session.presenters = selectedPresenters
    context.insert(session)
    dismiss()
  }
}

#Preview {
  AddSessionView(isAddingSession: .constant(false))
}
