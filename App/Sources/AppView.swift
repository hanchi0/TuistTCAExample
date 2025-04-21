//
//  AppView.swift
//  TuistTCAExample
//
//  Created by han on 4/21/25.
//  Copyright © 2025 han. All rights reserved.
//

import SwiftUI
import Splash
import Sign
import Home
import ComposableArchitecture

struct AppView: View {
    @Bindable var store: StoreOf<AppReducer>
    
    var body: some View {
        if !store.state.isSplashShown {
            SplashView(
                store: .init(
                    initialState: SplashReducer.State(),
                    reducer: {
                        SplashReducer()
                    }
                )
            )
        } else if store.state.token.isEmpty {
            SignView(
                store: .init(
                    initialState: SignReducer.State(),
                    reducer: {
                        SignReducer()
                    }
                )
            )
        } else {
            NavigationStack(
                path: $store.scope(state: \.path, action: \.path)) {
                    TabView(selection: $store.selection) {
                        HomeView(
                            store: store.scope(state: \.home, action: \.home)
                        )
                        .tabItem {
                            Text("Home")
                        }
                        .tag(0)
                    }
                } destination: { store in
                    switch store.case {
                    default:
                        EmptyView()
                    }
                }
                .sheet(item: $store.scope(state: \.destination, action: \.destination)) { store in
                    switch store.case {
                    default:
                        EmptyView()
                    }
                }
        }
    }
}

#Preview {
    AppView(
        store: .init(
            initialState: AppReducer.State(),
            reducer: {
                AppReducer()
            }
        )
    )
}
