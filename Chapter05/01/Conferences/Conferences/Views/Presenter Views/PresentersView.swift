import SwiftUI

struct PresentersView {
  @State private var isAddingPresenter = false
}

extension PresentersView: View {
  var body: some View {
    NavigationStack {
      NavigationLink("Presenter's name") {
        IndividualPresenterView()
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
    }
    .sheet(isPresented: $isAddingPresenter) {
      AddPresenterView(isAddingPresenter: $isAddingPresenter)
    }
  }
}

#Preview {
  PresentersView()
}
