import SwiftUI
import Splash

@main
struct SplashExampleApp: App {
    var body: some Scene {
        WindowGroup {
            SplashView(
                store: .init(
                    initialState: SplashReducer.State(),
                    reducer: {
                        SplashReducer()
                    }
                )
            )
        }
    }
}
