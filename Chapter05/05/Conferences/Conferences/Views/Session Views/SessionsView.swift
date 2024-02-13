import SwiftUI
import SwiftData

struct SessionsView {
  @State private var isAddingSession = false
  @Query(sort: \Session.title ) var sessions: [Session]
}

extension SessionsView: View {
  var body: some View {
    NavigationStack {
      List {
        ForEach(sessions) { session in
          NavigationLink(session.title,
                         value: session)
        }
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
      .navigationDestination(for: Session.self) { session in
        IndividualSessionView(session: session)
      }
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
