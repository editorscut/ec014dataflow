import SwiftUI
import SwiftData

struct PresentersView {
  @State private var isAddingPresenter = false
  @Query(sort: \Presenter.name) var presenters: [Presenter]
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
      AddPresenterView()
    }
  }
}

#Preview {
  PresentersView()
    .modelContainer(previewContainer)
}
