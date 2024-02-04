import SwiftUI
import CoreData
import MapKit

struct ContentView: View {
  @Environment(\.managedObjectContext) private var viewContext
  
  @FetchRequest(
    sortDescriptors: [NSSortDescriptor(keyPath: \Journey.startDate, ascending: true)],
    animation: .default)
  private var journeys: FetchedResults<Journey>
  
  var body: some View {
    NavigationView {
      List {
        ForEach(journeys) { journey in
          NavigationLink {
            EditableJourneyView(journey: journey)
          } label: {
            JourneyView(journey: journey)
          }
        }
        .onDelete(perform: deleteItems)
      }
      .navigationTitle("Journeys")
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          EditButton()
        }
        ToolbarItem {
          Button {
            let _ = Journey()
          } label: {
            Label("Add Item", systemImage: "plus")
          }
        }
      }
      Text("Select an item")
    }
  }
  
  
  private func deleteItems(offsets: IndexSet) {
    withAnimation {
      offsets.map { journeys[$0] }.forEach(viewContext.delete)
      
      do {
        try viewContext.save()
      } catch {
        // Replace this implementation with code to handle the error appropriately.
        // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        let nsError = error as NSError
        fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
      }
    }
  }
}


#Preview {
  ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
