import SwiftUI
import SwiftData

struct IndividualSessionView {
  @State private var title: String = ""
  let session: Session
}

extension IndividualSessionView: View {
  var body: some View {
    VStack {
      List {
        Section("Title") {
          TextField("Title", text: $title)
            .multilineTextAlignment(.center)
            .onSubmit { update() }
        }
        Section("Time slot") {
          TimeSlotChooserView()
        }
        Section("Related Sessions:") {
          RelatedSessionsView(session: session)
        }
        Section("Must have at least one presenter:") {
          SessionPresentersView()
        }
      }
    }
    .navigationTitle("Session Info")
    .navigationBarTitleDisplayMode(.inline)
    .onAppear {
      title = session.title
    }
  }
}

extension IndividualSessionView {
  private func update() {
    print("update called")
  }
}

#Preview {
  NavigationView {
    IndividualSessionView(session: previewSession)
      .modelContainer(previewContainer)
  }
}
