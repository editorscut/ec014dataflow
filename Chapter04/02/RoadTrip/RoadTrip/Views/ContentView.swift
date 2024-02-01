import SwiftUI

struct ContentView {
  @State private var history = JourneyHistory()
  @Environment(\.scenePhase) private var scenePhase
}

extension ContentView: View {
  var body: some View {
    NavigationStack {
      List {
        ForEach(history.journeys) { journey in
          NavigationLink {
            EditableJourneyView(journey: journey)
          } label: {
            JourneyView(journey: journey)
          }
        }
        .onDelete { indexSet in
          if let index = indexSet.first {
            history.deleteJourney(at: index)
          }
        }
      }
      .navigationTitle("Journeys")
      .toolbar {
        ToolbarItem(placement: .topBarTrailing) {
          Button {
            history.addJourney()
          } label: {
            Image(systemName: "plus")
          }
        }
        ToolbarItem(placement: .topBarLeading) {
          EditButton()
        }
      }
    }
    .onChange(of: scenePhase) { _, newValue in
      if newValue == .background {
        history.save()
      }
    }
  }
}

#Preview {
  ContentView()
}
