import SwiftData

let previewContainer: ModelContainer = {
  let schema = Schema([Session.self])
  let configuration = ModelConfiguration(isStoredInMemoryOnly: true)
  do {
    let container = try ModelContainer(for: schema,
                                       configurations: configuration)
    try addSampleData(to: container)
    return container
  } catch {
    fatalError("Couldn't create container: \(error.localizedDescription)")
  }
}()

fileprivate func addSampleData(to container: ModelContainer) throws {
  let context = ModelContext(container)
  for presenter in presenters {
    context.insert(presenter)
  }
  for session in sessions {
    context.insert(session)
  }
  assign(presenters,
         for: sessions)
  try context.save()
}

fileprivate let presenters = [Presenter(name: "Anne"),
                              Presenter(name: "Bob"),
                              Presenter(name: "Claire"),
                              Presenter(name: "David")]

fileprivate let sessions = [Session(title: "SwiftData"),
                            Session(title: "Macros"),
                            Session(title: "Async stuff")]

fileprivate func assign(_ presenters: [Presenter],
                        for sessions: [Session]) {
  sessions[0].presenters = [presenters[0]]
  sessions[1].presenters = [presenters[2], presenters[3]]
  sessions[2].presenters = [presenters[0], presenters[3]]
}
