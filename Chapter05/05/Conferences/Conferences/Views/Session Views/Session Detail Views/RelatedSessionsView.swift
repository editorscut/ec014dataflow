import SwiftUI
import SwiftData

struct RelatedSessionsView {
  let session: Session
  @Query var sessions: [Session]
}

extension RelatedSessionsView: View {
  var body: some View {
    ForEach (relatedSessions) { relatedSession in
      Text(relatedSession.title)
    }
  }
}

extension RelatedSessionsView  {
  private var relatedSessions: [Session] {
    sessions.filter { $0.presenters.contains(where: 
                        {session.presenters.contains($0)})}
      .filter { $0 != session}
  }
}

#Preview {
  RelatedSessionsView(session: Session(title: "Previewing"))
    .modelContainer(previewContainer)
}
