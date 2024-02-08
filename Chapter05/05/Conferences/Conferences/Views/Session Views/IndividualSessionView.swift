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
  IndividualSessionView(session: Session(title: "Previewing"))
    .modelContainer(previewContainer)
}
