import SwiftUI

@main
struct TuistTCAExampleApp: App {
    var body: some Scene {
        WindowGroup {
            AppView(
                store: .init(
                    initialState: AppReducer.State(),
                    reducer: { AppReducer() }
                )
            )
        }
    }
}
