import SwiftUI
import CoreData

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
            Text("Duration: \(journey.duration) seconds")
          } label: {
            VStack {
              Text(journey.transportationTypeName ?? "Unknown")
              Text(journey.startDate ?? Date(), style: .time)
            }
          }
        }
        .onDelete(perform: deleteItems)
      }
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          EditButton()
        }
        ToolbarItem {
          Button(action: addItem) {
            Label("Add Item", systemImage: "plus")
          }
        }
      }
      Text("Select an item")
    }
  }
  
  private func addItem() {
    withAnimation {
      let newJourney = Journey(context: viewContext)
      newJourney.startDate = Date()
      newJourney.duration = TimeInterval.random(in: 60...3600)
      newJourney.transportationTypeName = TransportationType.random().description
      
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

private let itemFormatter: DateFormatter = {
  let formatter = DateFormatter()
  formatter.dateStyle = .short
  formatter.timeStyle = .medium
  return formatter
}()

#Preview {
  ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
