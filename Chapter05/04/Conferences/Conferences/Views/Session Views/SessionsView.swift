import SwiftUI

struct SessionsView {
  @State private var isAddingSession = false
}

extension SessionsView: View {
  var body: some View {
    NavigationStack {
      NavigationLink("Sessions View") {
        IndividualSessionView()
      }
      .toolbar {
        ToolbarItem(placement: .navigationBarLeading) {
          EditButton()
        }
        ToolbarItem(placement: .navigationBarTrailing) {
          Button {
            isAddingSession = true
          } label: {
            Label("Add Session", systemImage: "plus")
          }
        }
      }
      .navigationTitle("Sessions")
    }
    .sheet(isPresented: $isAddingSession) {
      AddSessionView()
    }
  }
}

#Preview {
  SessionsView()
    .modelContainer(previewContainer)
}
