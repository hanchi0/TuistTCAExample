import SwiftUI
import Sign

@main
struct SignExampleApp: App {
    var body: some Scene {
        WindowGroup {
            SignView(
                store: .init(
                    initialState: SignReducer.State(),
                    reducer: {
                        SignReducer()
                    }
                )
            )
        }
    }
}
