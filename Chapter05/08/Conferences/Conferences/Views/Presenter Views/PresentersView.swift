import SwiftUI
import SwiftData

struct PresentersView {
  @State private var isAddingPresenter = false
  @Query(sort: \Presenter.name) var presenters: [Presenter]
  @Environment(\.modelContext) private var context
}

extension PresentersView: View {
  var body: some View {
    NavigationStack {
      List {
        ForEach(presenters) { presenter in
          NavigationLink(presenter.name,
                         value: presenter)
          .foregroundStyle(presenter.sessions.isEmpty 
                           ? Color.secondary : Color.primary)
          .deleteDisabled(!presenter.sessions.filter{$0.presenters.count == 1}.isEmpty)
        }
        .onDelete { indexSet in
          if let index = indexSet.first {
            context.delete(presenters[index])
          }
        }
      }
      .toolbar {
        ToolbarItem(placement: .navigationBarLeading) {
          EditButton()
        }
        ToolbarItem(placement: .navigationBarTrailing) {
          Button {
            isAddingPresenter = true
          } label: {
            Label("Add trip", systemImage: "plus")
          }
        }
      }
      .navigationTitle("Presenters")
      .navigationDestination(for: Presenter.self) { presenter in
        IndividualPresenterView(presenter: presenter)
      }
    }
    .sheet(isPresented: $isAddingPresenter) {
      AddPresenterView(isAddingPresenter: $isAddingPresenter)
    }
  }
}

#Preview {
  PresentersView()
    .modelContainer(previewContainer)
}
