import SwiftUI
import SwiftData

struct IndividualSessionView {
  @State private var title: String = ""
  let session: Session
  @State private var selectedPresenters: [Presenter] = []
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
          SessionPresentersView(selectedPresenters: $selectedPresenters)
        }
      }
    }
    .onAppear {
      title = session.title
      selectedPresenters = session.presenters
    }
  }
}

extension IndividualSessionView {
  private func update() {
    print("update called")
  }
}

#Preview {
  NavigationStack {
    IndividualSessionView(session: previewSession)
      .modelContainer(previewContainer)
  }
}
