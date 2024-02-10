import SwiftUI

struct IndividualSessionView {
  @State private var title: String = ""
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
          RelatedSessionsView()
        }
        Section("Must have at least one presenter:") {
          SessionPresentersView()
        }
      }
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
    IndividualSessionView()
  }
}
