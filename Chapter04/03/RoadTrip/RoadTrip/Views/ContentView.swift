import SwiftUI
import SwiftData

struct ContentView {
  @Query private var journeys: [Journey]
  @Environment(\.modelContext) private var context
}

extension ContentView: View {
  var body: some View {
    NavigationStack {
      List {
        ForEach(journeys) { journey in
          NavigationLink {
            EditableJourneyView(journey: journey)
          } label: {
            JourneyView(journey: journey)
          }
        }
        .onDelete { indexSet in
          if let index = indexSet.first {
            context.delete(journeys[index])
          }
        }
      }
      .navigationTitle("Journeys")
      .toolbar {
        ToolbarItem(placement: .topBarTrailing) {
          Button {
            context.insert(Journey())
          } label: {
            Image(systemName: "plus")
          }
        }
        ToolbarItem(placement: .topBarLeading) {
          EditButton()
        }
      }
    }
  }
}

#Preview {
  ContentView()
}
