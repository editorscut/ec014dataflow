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
          TimeSlotChooserView(session: session)
        }
        Section("Related Sessions:") {
          RelatedSessionsView(session: session)
        }
        Section("Must have at least one presenter:") {
          SessionPresentersView(selectedPresenters: $selectedPresenters)
        }
      }
    }
    .onChange(of: selectedPresenters) { update() }
    .onAppear {
      title = session.title
      selectedPresenters = session.presenters
    }
    .onDisappear{ update() }
  }
}

extension IndividualSessionView {
  private func update() {
    if !title.isEmpty {
      session.title = title
    }
    if !selectedPresenters.isEmpty {
      session.presenters = selectedPresenters
    }
  }
}

#Preview {
  NavigationStack {
    IndividualSessionView(session: previewSession)
      .modelContainer(previewContainer)
  }
}
