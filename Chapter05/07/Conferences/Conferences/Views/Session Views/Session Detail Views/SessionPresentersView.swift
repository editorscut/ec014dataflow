import SwiftUI
import SwiftData

struct SessionPresentersView {
  @Query(sort: \Presenter.name) private var presenters: [Presenter]
  @Binding var selectedPresenters: [Presenter]
}

extension SessionPresentersView: View {
  var body: some View {
    ForEach(presenters) {presenter in
      HStack {
        Text(presenter.name)
        Spacer()
        Image(systemName: "checkmark")
          .foregroundStyle(selectedPresenters.contains(presenter) ? Color.green : .clear)
      }
      .contentShape(Rectangle())
      .onTapGesture {
        if let index = selectedPresenters.firstIndex(of: presenter),
           selectedPresenters.count > 1 {
          selectedPresenters.remove(at: index)
        } else {
          selectedPresenters.append(presenter)
        }
      }
    }
  }
}

#Preview {
  SessionPresentersView(selectedPresenters: .constant([Presenter]()))
    .modelContainer(previewContainer)
}
